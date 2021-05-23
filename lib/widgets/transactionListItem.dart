import 'package:flutter/material.dart';

import '../models/transaction.dart';

class TransactionListItem extends StatelessWidget {
  final Transaction item;

  TransactionListItem({this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              '\$ ' + item.amount.toString(),
            ),
          ),
          Column(
            children: <Widget>[
              Text(item.title),
              Text(item.date.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
