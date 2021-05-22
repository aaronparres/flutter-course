import 'package:flutter/material.dart';

import 'question.dart';
import 'answerButton.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _buttonPressedHandler() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const questions = [
      {
        'questionText': 'What\'s your favourite color?',
        'answers': [
          'Blue',
          'Red',
          'Green',
        ]
      },
      {
        'questionText': 'What\'s your favourite animal?',
        'answers': [
          'Dog',
          'Cat',
          'Tortoise',
        ]
      },
      {
        'questionText': 'What\'s your favourite food?',
        'answers': [
          'Burger',
          'Pizza',
          'Tortilla de patatas',
        ]
      },
      {
        'questionText': 'What\'s your favourite tv show?',
        'answers': [
          'Jimmy Fallon\'s show',
          'El Hormiguero',
          'Jackass',
        ]
      },
      {
        'questionText': 'What\'s your favourite book?',
        'answers': [
          'Shadow and Bone',
          'Hunger Games',
          'Harry Potter',
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello there'),
        ),
        body: Center(
          child: Column(
            children: [
              Question(questionText: questions[_questionIndex]['questionText']),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) => AnswerButton(
                        answerCallbackFunc: _buttonPressedHandler,
                        answerText: answer,
                      ))
                  .toList(),
            ],
          ),
        ),
        floatingActionButton: ElevatedButton(
          child: Text('hello there'),
          onPressed: () => print('Hello there'),
        ),
      ),
    );
  }
}
