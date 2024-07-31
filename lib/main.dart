import 'package:flutter/material.dart';
import 'package:test_app/screens/index.dart';
import 'package:test_app/screens/world_time_app/choose_location.dart';
import 'package:test_app/screens/world_time_app/home.dart';
import 'package:test_app/screens/world_time_app/loading.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.orangeAccent,
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
        '/index': (context) => IndexActivity(),
      },
    );
  }
}
