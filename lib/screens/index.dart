import 'package:flutter/material.dart';
import 'package:test_app/screens/quotes_activity.dart';
import 'package:test_app/screens/world_time_app/home.dart';

import 'different_layout_activity.dart';
import 'form_activity.dart';
import 'list_view_activity.dart';
import 'my_id_card_activity.dart';
import 'tab_activity.dart';

class IndexActivity extends StatelessWidget {
  IndexActivity({super.key});

  var indexList = [
    {'title': 'Different layouts activity', 'activity': HomeActivity()},
    {'title': 'Form activity', 'activity': MyFormActivity()},
    {'title': 'List/Grid view activity', 'activity': MyListViewActivity()},
    {'title': 'Tab activity', 'activity': MyTabBarActivity()},
    {'title': 'My ID card activity', 'activity': MyId()},
    {'title': 'My quotes activity', 'activity': QuoteList()},
    {'title': 'World Time App activity', 'activity': Home()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App - Index'),
        toolbarHeight: 60,
      ),
      body: ListView.builder(
        itemCount: indexList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          indexList[index]['activity'] as Widget),
                );
              },
              child: Card(
                margin: const EdgeInsets.fromLTRB(5, 10, 10, 10),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('${index + 1}. ${indexList[index]['title']}'),
                ),
              ));
        },
      ),
    );
  }
}
