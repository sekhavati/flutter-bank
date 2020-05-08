import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:flutterbank/models/transaction.dart';
import 'package:flutterbank/widgets/transaction/transaction.dart';

class Transactions extends StatelessWidget {
  final List<TransactionModel> transactions;

  Transactions(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Transactions',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: kSwatchColor2,
          ),
        ),
        SizedBox(
          height: 28,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: transactions.length,
            itemBuilder: (BuildContext context, int index) {
              final nextTransaction = transactions[index];

              return Padding(
                padding: const EdgeInsets.only(
                  bottom: 24,
                ),
                child: Transaction(
                  time: nextTransaction.time,
                  description: nextTransaction.description,
                  amount: nextTransaction.amount,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
