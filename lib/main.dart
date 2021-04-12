import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void buttonPressedHandler() {
    print('Hello there!!!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite food?',
      'What\'s your favourite tv show?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello there'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(questions[0]),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: () => print('Answer 1 selected'),
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => print('Answer 2 selected'),
              ),
              ElevatedButton(
                child: Text('Answer 3'),
                onPressed: () => print('Answer 3 selected'),
              ),
            ],
          ),
        ),
        floatingActionButton: ElevatedButton(
          child: Text('hello there'),
          onPressed: buttonPressedHandler,
        ),
      ),
    );
  }
}
