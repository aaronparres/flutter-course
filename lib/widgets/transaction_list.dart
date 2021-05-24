import 'package:flutter/material.dart';

import './transaction_list_item.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;

  TransactionList({this.userTransactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: userTransactions
          .map(
            (transaction) => TransactionListItem(
              item: transaction,
            ),
          )
          .toList(),
    );
  }
}
