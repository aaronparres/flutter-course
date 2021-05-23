import 'package:flutter/material.dart';

import './widgets/transactionListItem.dart';

import './models/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Transaction> _transactions = [
    Transaction(
      id: 't1',
      title: 'iPhone',
      amount: 850.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Nike Shoes',
      amount: 120.95,
      date: DateTime.now(),
    ),
  ];

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
            Column(
              children: _transactions
                  .map(
                    (transaction) => TransactionListItem(
                      item: transaction,
                    ),
                  )
                  .toList(),
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
