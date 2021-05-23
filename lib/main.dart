// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './text.dart';
import './button.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _text = 'Hello there!!';

  void _changeTextHandler() {
    if (_text == 'General Kenobi') {
      setState(() => _text = 'Hello there!!');
    } else {
      setState(() => _text = 'General Kenobi');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FLUTTER BASICS'),
        ),
        body: Center(
          child: Column(
            children: [
              CustomText(
                text: _text,
              ),
              CustomButton(
                changeTextHandler: _changeTextHandler,
              )
            ],
          ),
        ),
      ),
    );
  }
}
