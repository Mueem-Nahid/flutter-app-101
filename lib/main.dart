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

  myAlertDialogue(ctx) {
    return showDialog(
        context: ctx,
        builder: (BuildContext context) {
          return Expanded(
              child: AlertDialog(
            title: Text('Attention'),
            content: Text('Are you sure?'),
            actions: [
              TextButton(
                  onPressed: () {
                    myAlertDialogueAction(context, 'yes');
                  },
                  child: Text('Yes')),
              TextButton(
                  onPressed: () {
                    myAlertDialogueAction(context, 'no');
                  },
                  child: Text('No'))
            ],
          ));
        });
  }

  myAlertDialogueAction(context, type) {
    if (type == 'yes') {
      mySnackBar('Item deleted.', context);
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
        backgroundColor: Colors.amberAccent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))));

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
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: "Contact"),
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
        /*body: SafeArea(
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
      ),*/
        // Row
        body: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.blue[400],
                padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          border: Border.all(color: Colors.black, width: 2)),
                      child: const Text('Card 1'),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          border: Border.all(color: Colors.black, width: 2)),
                      child: const Text('Card 2'),
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          border: Border.all(color: Colors.black, width: 2)),
                      child: const Text('Card 3'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.pink[600],
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                myAlertDialogue(context);
                              },
                              style: buttonStyle,
                              child: const Text('Confirm dialogue'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyFormPage()),
                                );
                              },
                              style: buttonStyle,
                              child: const Text('Form'),
                            ),
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/batman-1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class MyFormPage extends StatelessWidget {
  const MyFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'First Name'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Last Name'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Email'),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  minWidth: double.infinity,
                  height: 50,
                  child: const Text('Submit'),
                )),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 15),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.red,
                textColor: Colors.white,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                minWidth: double.infinity,
                height: 50,
                child: const Text("Go Back!"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
