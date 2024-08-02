import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //   simulate delay, similar with setTimeout
  void simulateDelay() async {
    String id = await Future.delayed(const Duration(seconds: 3), () {
      print('fetch id');
      return '101';
    });

    String details = await Future.delayed(const Duration(seconds: 2), () {
      print('wait for id and then get details');
      return 'Mueem Nahid, Soft Eng.';
    });

    print('$id - $details');
  }

  void getTime() async {
    // https://worldtimeapi.org/api/timezone/Europe/London
    var url = Uri.https(
        'worldtimeapi.org', '/api/timezone/Europe/London', {'q': '{https}'});
    var response = await http.get(url);
    Map data = jsonDecode(response.body);
    print('here is data $data');
    String dateTime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(hours: int.parse(offset)));
    print('now is $now');
  }

  @override
  void initState() {
    super.initState();
    getTime();
    // simulateDelay();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Loading'),
    );
  }
}
