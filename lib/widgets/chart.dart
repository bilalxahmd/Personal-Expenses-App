import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transactions.dart';
import './chart_bar.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;

  Chart(this.recentTransactions);

  List<Map<String, Object>> get getGroupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0.0;

      for (var i = 0; i < recentTransactions.length; i++) {
        if (recentTransactions[i].dateTime.day == weekDay.day &&
            recentTransactions[i].dateTime.month == weekDay.month &&
            recentTransactions[i].dateTime.year == weekDay.year) {
          totalSum += recentTransactions[i].amount;
        }
      }

      return {
        'day': DateFormat.E()
            .format(weekDay)
            .substring(0, 1), //.substring(0, 1).toString(),
        'amount': totalSum
      };
    }).reversed.toList();
  }

  double get maxSpendingAmount {
    return getGroupedTransactionValues.fold(0.0, (sum, item) {
      return sum + (item['amount'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: getGroupedTransactionValues.map((data) {
            return ChartBar(
                data['day'] as String,
                data['amount'] as double,
                maxSpendingAmount == 0.0
                    ? 0.0
                    : (data['amount'] as double) / maxSpendingAmount);
          }).toList(),
        ),
      ),
    );
  }
}
