import 'package:flutter/material.dart';

import 'question.dart';
import 'answerButton.dart';

class QuizzModule extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function buttonPressedHandler;

  QuizzModule({
    @required this.questions,
    @required this.questionIndex,
    @required this.buttonPressedHandler,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      child: Column(
        children: [
          Question(
            questionText: questions[questionIndex]['questionText'],
          ),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map(
                (answer) => AnswerButton(
                  answerCallbackFunc: () =>
                      buttonPressedHandler(answer['score']),
                  answerText: answer['text'],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
