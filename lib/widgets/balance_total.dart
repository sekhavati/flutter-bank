import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';

class BalanceTotal extends StatelessWidget {
  final double balance;

  BalanceTotal(this.balance);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          'Total Balance',
          style: TextStyle(
            color: kSwatchColor4,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '£${balance.toString()}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
