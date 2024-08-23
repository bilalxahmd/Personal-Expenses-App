import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transactions.dart';

class TransactionItems extends StatelessWidget {
  const TransactionItems({
    required this.transaction,
    required this.deleteTx,
  });

  final Transaction transaction;
  final Function deleteTx;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 5,
      ),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: FittedBox(
            child: Text("\$${transaction.amount}"),
          ),
        ),
        title: Text(
          '${transaction.title}',
          style: Theme.of(context).textTheme.headline1,
        ),
        subtitle: Text(
          DateFormat.yMMMd().format(transaction.dateTime),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.delete,
          ),
          onPressed: () => deleteTx(transaction.id),
          color: Theme.of(context).errorColor,
        ),
      ),
    );
  }
}
