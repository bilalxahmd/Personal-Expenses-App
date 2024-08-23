import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/transactions.dart';
import 'transaction_itens.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  Function deleteTx;

  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 450,
      width: double.infinity,
      //Wrapped in container so that while text input,
      //keyboard is wrapped around it appropriately
      child: transactions.isEmpty
          ? LayoutBuilder(
              builder: (ctx, constraints) {
                return Column(
                  children: [
                    Text(
                      'No transactions added yet!',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                    SizedBox(
                      height: 20, //Works as spacing bw widgets
                    ),
                    Container(
                      //Wrapped with container so image widget KNOWS its alotted space limit
                      height: constraints.maxHeight * 0.65,
                      child: Image.asset(
                        'assets/images/waiting.png',
                        fit: BoxFit.cover, //Covers entire space alotted
                      ),
                    ),
                  ],
                );
              },
            )
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionItems(
                  transaction: transactions[index],
                  deleteTx: deleteTx,
                );
                ;
                // return Card(
                //   child: Row(children: [
                //     Container(
                //       decoration: BoxDecoration(
                //         color: Theme.of(context).primaryColor,
                //         border: Border.all(
                //           color: Theme.of(context).primaryColor,
                //           width: 1,
                //         ),
                //       ),
                //       margin: EdgeInsets.symmetric(
                //         vertical: 10,
                //         horizontal: 15,
                //       ),
                //       padding: EdgeInsets.all(10),
                //       child: Text(
                //         'Rs ${transactions[index].amount.toStringAsFixed(2)}', //The $ sign works as interpolation & index is the built in arg for builder anonymous function
                //         style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //         ),
                //       ),
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       children: [
                //         Text(
                //           transactions[index].title,
                //           style: Theme.of(context).textTheme.headline1,
                //           // style: TextStyle(
                //           //   fontSize: 18,
                //           //   fontWeight: FontWeight.bold,
                //           // ),
                //         ),
                //         Text(
                //           DateFormat.yMMMd()
                //               .format(transactions[index].dateTime),
                //           //tx.dateTime.toString(),
                //           style: TextStyle(
                //             color: Colors.grey,
                //           ),
                //         ),
                //       ],
                //     )
                //   ]),
                // );
              },
            ),
    );
  }
}
