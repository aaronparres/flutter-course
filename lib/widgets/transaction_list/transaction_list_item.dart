import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../models/transaction.dart';

class TransactionListItem extends StatelessWidget {
  final Transaction item;

  TransactionListItem({this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          backgroundColor: Theme.of(context).accentColor,
          child: Padding(
            padding: EdgeInsets.all(6),
            child: FittedBox(
              child: Text(
                '\$${item.amount.toStringAsFixed(2)}',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
        title: Text(item.title),
        subtitle: Text(DateFormat.yMMMd().format(item.date)),
      ),
      // child: Row(
      //   children: <Widget>[
      //     Container(
      //       margin: EdgeInsets.symmetric(
      //         vertical: 10,
      //         horizontal: 15,
      //       ),
      //       decoration: BoxDecoration(
      //         border: Border.all(
      //           color: Theme.of(context).primaryColor,
      //           width: 2,
      //         ),
      //       ),
      //       padding: EdgeInsets.all(10),
      //       child: Text(
      //         '\$ ${item.amount.toStringAsFixed(2)}',
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //           fontSize: 20,
      //           color: Theme.of(context).accentColor,
      //         ),
      //       ),
      //     ),
      //     Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: <Widget>[
      //         Text(
      //           item.title,
      //           style: Theme.of(context).textTheme.headline6,
      //         ),
      //         Text(
      //           DateFormat.yMMMMd().format(item.date),
      //           style: TextStyle(
      //             fontSize: 12,
      //             color: Theme.of(context).primaryColor,
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
