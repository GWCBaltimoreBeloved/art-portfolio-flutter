import 'package:flutter/material.dart';

void showErrorSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text("Error - Please try again"),
  ));
}
