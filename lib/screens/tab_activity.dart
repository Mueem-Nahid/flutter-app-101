import 'package:flutter/material.dart';

import '../fragments/CallFragment.dart';
import '../fragments/CardFragment.dart';
import '../fragments/HomeFragment.dart';
import '../fragments/ListFragment.dart';

class MyTabBarActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Tab Activity'),
            bottom: const TabBar(
              // isScrollable: true,
              // tabAlignment: TabAlignment.start,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.credit_card),
                  text: 'Form',
                ),
                Tab(
                  icon: Icon(Icons.list),
                  text: 'List',
                ),
                Tab(
                  icon: Icon(Icons.dialer_sip),
                  text: 'Call',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeFragment('Passing data from one activity to another.'),
              CardFragment(),
              ListFragment(),
              CallFragment()
            ],
          ),
        ));
  }
}
