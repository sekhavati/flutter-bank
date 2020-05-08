import 'package:flutter/material.dart';
import 'package:flutterbank/widgets/transaction/transaction_amount.dart';
import 'package:flutterbank/widgets/transaction/transaction_description.dart';
import 'package:flutterbank/widgets/transaction/transaction_icon.dart';

class Transaction extends StatelessWidget {
  final double amount;
  final String description;
  final DateTime time;

  Transaction({this.amount, this.description, this.time});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: TransactionIcon(),
          margin: EdgeInsets.only(right: 20),
        ),
        Expanded(
          child: Container(
            child: TransactionDescription(
              description: description,
              time: time,
            ),
            margin: EdgeInsets.only(right: 20),
          ),
        ),
        TransactionAmount(amount),
      ],
    );
  }
}
