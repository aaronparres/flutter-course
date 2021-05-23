import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int score;
  final Function resetHandler;

  Results({this.score, this.resetHandler});

  String get resultPhrase {
    String resultText;
    if (score <= 8) {
      resultText = "8 points";
    } else if (score <= 12) {
      resultText = "OMG 12 points";
    } else if (score <= 16) {
      resultText = "CREEEEEEEEEPY";
    } else {
      resultText = "Here's your result";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.teal,
            side: BorderSide(
              width: 2,
              color: Colors.teal,
            ),
          ),
          child: Text(
            'Reset',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          onPressed: resetHandler,
        ),
      ],
    );
  }
}
