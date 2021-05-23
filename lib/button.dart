import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function changeTextHandler;

  CustomButton({this.changeTextHandler});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: changeTextHandler,
      child: Text('Jump', style: TextStyle(fontSize: 18)),
      style: ElevatedButton.styleFrom(
        primary: Colors.red.shade900,
        onPrimary: Colors.yellow,
        padding: EdgeInsets.all(12),
      ),
    );
  }
}
