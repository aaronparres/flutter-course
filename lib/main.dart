import 'package:flutter/material.dart';

import 'quizzModule.dart';
import 'results.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  void _buttonPressedHandler(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) print('We have more questions!!!');
  }

  void _resetQuizz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'QUIZZ APP',
          ),
          backgroundColor: Colors.teal.shade300,
        ),
        body: Center(
          child: _questionIndex < _questions.length
              ? QuizzModule(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  buttonPressedHandler: _buttonPressedHandler,
                )
              : Results(
                  score: _totalScore,
                  resetHandler: _resetQuizz,
                ),
        ),
        floatingActionButton: TextButton(
          style: TextButton.styleFrom(
            primary: Colors.teal.shade700,
          ),
          child: Text(
            'hello there',
          ),
          onPressed: () => print('Hello there'),
        ),
      ),
    );
  }
}
