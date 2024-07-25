import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

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
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.orangeAccent,
        onPressed: () {
          mySnackBar('This is floating Action Button', context);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar('This is home', context);
          }
          if (index == 1) {
            mySnackBar('This is message', context);
          }
          if (index == 2) {
            mySnackBar('This is profile', context);
          }
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
                margin: EdgeInsets.only(bottom: 0),
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.only(bottom: 0),
                  decoration: BoxDecoration(color: Colors.orangeAccent),
                  accountName: Text('Mueem'),
                  accountEmail: Text('abc@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Color(0xFF778899),
                    backgroundImage: NetworkImage(
                        'https://randomuser.me/api/portraits/men/15.jpg'),
                  ),
                )),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                mySnackBar('This is home', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.message),
              title: const Text('Message'),
              onTap: () {
                mySnackBar('This is Message', context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_page),
              title: const Text('Contact'),
              onTap: () {
                mySnackBar('This is Contact', context);
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('Left', textAlign: TextAlign.center),
                          Text('Left', textAlign: TextAlign.center),
                          Text('Left', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('Right', textAlign: TextAlign.center),
                          Text('Right', textAlign: TextAlign.center),
                          Text('Right', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Bottom', textAlign: TextAlign.center),
                    Text('Bottom', textAlign: TextAlign.center),
                    Text('Bottom', textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
