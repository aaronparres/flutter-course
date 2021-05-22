import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function answerCallbackFunc;
  final String answerText;

  AnswerButton({this.answerCallbackFunc, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.teal.shade300),
          foregroundColor: MaterialStateProperty.all(Colors.white),
        ),
        child: Text(answerText),
        onPressed: answerCallbackFunc,
      ),
    );
  }
}
