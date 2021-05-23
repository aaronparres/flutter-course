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
