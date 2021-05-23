import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PERSONAL EXPENSES'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Chart'),
                elevation: 5,
              ),
            ),
            Card(
              color: Colors.green,
              child: Text('Transactions'),
              elevation: 5,
            ),
          ],
        ),
        floatingActionButton: ElevatedButton(
          child: Text('hello there'),
          onPressed: () => print('Hello there'),
        ),
      ),
    );
  }
}
