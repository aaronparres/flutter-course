import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionListItem extends StatelessWidget {
  final Transaction item;

  TransactionListItem({this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blueGrey,
                width: 2,
              ),
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              '\$ ${item.amount.toStringAsFixed(2)}',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                item.title,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
              Text(
                DateFormat.yMMMMd().format(item.date),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
