import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questions = ['What\'s your favourite color?', 'Red', 'Green', 'Blue'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('hello there'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(questions[0]),
              RaisedButton(
                child: Text(questions[1]),
                onPressed: null,
              ),
              RaisedButton(
                child: Text(questions[2]),
                onPressed: null,
              ),
              RaisedButton(
                child: Text(questions[3]),
                onPressed: null,
              ),
            ],
          ),
        ),
        floatingActionButton: ElevatedButton(
          child: Text('hello'),
          onPressed: test,
        ),
      ),
    );
  }

  void test() {
    print('test');
  }
}
