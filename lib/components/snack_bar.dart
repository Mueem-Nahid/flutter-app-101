import 'package:flutter/material.dart';

mySnackBar(message, ctx) {
  return ScaffoldMessenger.of(ctx)
      .showSnackBar(SnackBar(content: Text(message)));
}