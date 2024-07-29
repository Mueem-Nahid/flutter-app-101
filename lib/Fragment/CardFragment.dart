import 'package:flutter/material.dart';

class CardFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        color: Color.fromRGBO(33, 191, 115, 1),
        child: SizedBox(
          height: 150,
          width: 150,
          child: Center(child: Text('Card 1')),
        ),
      ),
    );
  }
}
