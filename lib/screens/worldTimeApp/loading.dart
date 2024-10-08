import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_app/services/world_time.dart';

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

  void setupWorldTime() async {
    WorldTime instance = WorldTime(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/world-time-home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
    // simulateDelay();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: SpinKitCubeGrid(
        color: Colors.blue,
        size: 50.0,
      ),
    ));
  }
}
