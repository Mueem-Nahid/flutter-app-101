import 'package:flutter/material.dart';
import 'package:test_app/screens/index.dart';

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
        home: IndexActivity());
  }
}
