import 'package:flutter/material.dart';

import 'question.dart';

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
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite food?',
      'What\'s your favourite tv show?',
      'What\'s your favourite book?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello there'),
        ),
        body: Center(
          child: Column(
            children: [
              Question(
                  questionText: questions[_questionIndex]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: _buttonPressedHandler,
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: _buttonPressedHandler,
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: _buttonPressedHandler,
              ),
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
