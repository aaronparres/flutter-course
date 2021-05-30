import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'chart_bar.dart';

import '../../models/transaction.dart';

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

        return {
          'day': DateFormat.E().format(weekDay).substring(0, 1),
          'amount': totalSum,
        };
      });

  double get totalSpending =>
      groupedTransactionValues.fold(0.0, (sum, item) => sum + item['amount']);

  @override
  Widget build(BuildContext context) {
    print(groupedTransactionValues);
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: groupedTransactionValues
            .map(
              (gTx) => ChartBar(
                label: gTx['day'],
                spendingAmount: gTx['amount'],
                spendingPercentageOfTotal: totalSpending == 0.0
                    ? 0.0
                    : (gTx['amount'] as double) / totalSpending,
              ),
            )
            .toList(),
      ),
    );
  }
}
