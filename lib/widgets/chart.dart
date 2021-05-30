import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart({this.recentTransactions});

  List<Map<String, Object>> get groupedTransactionValues =>
      List.generate(7, (index) {
        final weekDay = DateTime.now().subtract(Duration(days: index));
        var totalSum = 0.0;

        for (var rTx in recentTransactions) {
          if (rTx.date.day == weekDay.day &&
              rTx.date.month == weekDay.month &&
              rTx.date.year == weekDay.year) {
            totalSum += rTx.amount;
          }
        }

        print(DateFormat.E().format(weekDay));
        print(totalSum);

        return {
          'day': DateFormat.E().format(weekDay),
          'amount': totalSum,
        };
      });

  @override
  Widget build(BuildContext context) {
    print(groupedTransactionValues);
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [],
        // groupedTransactionValues
        //     .map(
        //       (gTx) => {
        //         Column(
        //           children: [Text('\$')],
        //         ),
        //       },
        //     )
        //     .toList(),
      ),
    );
  }
}
