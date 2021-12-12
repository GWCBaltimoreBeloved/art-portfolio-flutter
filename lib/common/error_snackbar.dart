import 'package:flutter/material.dart';

void showErrorSnackbar(
  BuildContext context, {
  String message = 'Error - Please try again',
}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
  ));
}
