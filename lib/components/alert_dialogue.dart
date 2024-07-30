import 'package:flutter/material.dart';
import 'package:test_app/components/snack_bar.dart';

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