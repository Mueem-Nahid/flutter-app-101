import 'package:flutter/material.dart';
import 'package:test_app/screens/index.dart';
import 'package:test_app/screens/worldTimeApp/choose_location.dart';
import 'package:test_app/screens/worldTimeApp/home.dart';
import 'package:test_app/screens/worldTimeApp/loading.dart';

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
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const Home(),
        '/location': (context) => const ChooseLocation(),
        '/index': (context) => IndexActivity(),
      },
    );
  }
}
