import 'dart:convert';

import 'package:http/http.dart' as http;

class WorldTime {
  String location;
  late String time;
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      // https://worldtimeapi.org/api/timezone/Europe/London
      var endpoint =
          Uri.https('worldtimeapi.org', '/api/timezone/$url', {'q': '{https}'});
      var response = await http.get(endpoint);
      Map data = jsonDecode(response.body);
      String dateTime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(offset)));
      time = now.toString();
    } catch (e) {
      time = 'Failed to get time data';
    }
  }
}
