import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:flutterbank/models/account.dart';
import 'package:provider/provider.dart';

class BalanceTotal extends StatelessWidget {
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
          Provider.of<Account>(context).totalBalance.toString(),
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
