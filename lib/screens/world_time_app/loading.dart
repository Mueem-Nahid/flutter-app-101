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
    String id = await Future.delayed(Duration(seconds: 3), () {
      print('fetch id');
      return '101';
    });

    String details = await Future.delayed(Duration(seconds: 2), () {
      print('wait for id and then get details');
      return 'Mueem Nahid, Soft Eng.';
    });

    print('$id - $details');
  }

  void getData() async {
    var url =
        Uri.https('jsonplaceholder.typicode.com', '/todos/1', {'q': '{https}'});
    var response = await http.get(url);
    Map data = jsonDecode(response.body);
  }

  @override
  void initState() {
    super.initState();
    getData();
    // simulateDelay();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading'),
    );
  }
}
