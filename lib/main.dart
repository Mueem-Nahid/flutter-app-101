import 'package:flutter/material.dart';
import 'package:test_app/screens/different_layout_activity.dart';
import 'package:test_app/screens/form_activity.dart';
import 'package:test_app/screens/index.dart';
import 'package:test_app/screens/list_view_activity.dart';
import 'package:test_app/screens/my_id_card_activity.dart';
import 'package:test_app/screens/quotes_activity.dart';
import 'package:test_app/screens/tab_activity.dart';
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
        '/': (context) => IndexActivity(),
        '/different-layouts': (context) => const HomeActivity(),
        '/form': (context) => const MyFormActivity(),
        '/list-view': (context) => MyListViewActivity(),
        '/tab': (context) => MyTabBarActivity(),
        '/id-card': (context) => const MyId(),
        '/quotes': (context) => const QuoteList(),
        '/world-time': (context) => const Loading(),
        '/world-time-home': (context) => const Home(),
        '/world-time-location': (context) => const ChooseLocation(),
      },
    );
  }
}
