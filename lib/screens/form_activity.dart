import 'package:flutter/material.dart';

class MyFormActivity extends StatelessWidget {
  const MyFormActivity({super.key});

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