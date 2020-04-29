import 'package:flutter/material.dart';
import 'package:flutterbank/widgets/account-card.dart';
import 'package:flutterbank/widgets/transactions.dart';

class AccountOverviewScreen extends StatelessWidget {
  static String kRouteId = "account-overview";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Cards'),
            AccountCard(),
            Text('Transactions'),
            Transactions(),
          ],
        ),
      ),
    );
  }
}
