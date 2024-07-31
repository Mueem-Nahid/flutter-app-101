import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //   simulate delay, similar with setTimeout
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

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Text('Choose location'),
    );
  }
}
