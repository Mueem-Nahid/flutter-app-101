import 'package:flutter/cupertino.dart';

class HomeFragment extends StatelessWidget {
  final String data;

  const HomeFragment(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Center(
        child: Text('This is Home fragment. $data'),
      ),
    );
  }
}
