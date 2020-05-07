import 'package:flutter/material.dart';
import 'package:flutterbank/bank_client.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:flutterbank/widgets/balance_total.dart';
import 'package:flutterbank/widgets/header.dart';
import 'package:flutterbank/widgets/drag_handle.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';

import 'package:flutterbank/widgets/balance_chart.dart';
import 'package:flutterbank/widgets/transactions.dart';
import 'package:flutterbank/widgets/cards.dart';

class HomeScreen extends StatelessWidget {
  static String kRouteId = "home";

  @override
  Widget build(BuildContext context) {
    BankClient test = BankClient();
    print(test.getAccountDetails());

    return Scaffold(
      backgroundColor: kSwatchColor2,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 48,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Header(),
              SizedBox(
                height: 24,
              ),
              BalanceTotal(),
              SizedBox(
                height: 24,
              ),
              BalanceChart(),
            ],
          ),
        ),
      ),
      bottomSheet: SolidBottomSheet(
        maxHeight: 400,
        headerBar: Container(
          color: kSwatchColor2,
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 48,
              vertical: 24,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(48),
                topRight: Radius.circular(48),
              ),
            ),
            child: Column(
              children: <Widget>[
                DragHandle(),
                Cards(),
              ],
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 48,
            vertical: 24,
          ),
          color: Colors.white,
          child: Transactions(),
        ),
      ),
    );
  }
}
