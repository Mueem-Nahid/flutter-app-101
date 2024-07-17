import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        home: const HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  mySnackBar(message, ctx) {
    return ScaffoldMessenger.of(ctx)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Inventory'),
        titleSpacing: 5,
        centerTitle: false,
        toolbarHeight: 60,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                mySnackBar('This is comment', context);
              },
              icon: const Icon(Icons.comment))
        ],
      ),
      body: const Text('This is body'),
    );
  }
}
