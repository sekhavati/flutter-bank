import 'package:flutter/material.dart';
import 'package:flutterbank/widgets/historical_balance.dart';
import 'package:flutterbank/widgets/transactions.dart';
import 'package:flutterbank/widgets/cards.dart';

class HomeScreen extends StatelessWidget {
  static String kRouteId = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 48,
            vertical: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: HistoricalBalance()),
              Expanded(child: Cards()),
              Expanded(child: Transactions()),
            ],
          ),
        ),
      ),
    );
  }
}
