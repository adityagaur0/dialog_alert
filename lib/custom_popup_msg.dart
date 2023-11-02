import 'package:flutter/material.dart';

class CustomPopupMessage extends StatelessWidget {
  final String title;
  final String message;

  CustomPopupMessage({
    required this.title,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop(); // Close the pop-up
          },
        ),
      ],
    );
  }
}
