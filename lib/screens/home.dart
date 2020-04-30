import 'package:flutter/material.dart';
import 'package:flutterbank/widgets/transactions.dart';

class HomeScreen extends StatelessWidget {
  static String kRouteId = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Transactions(),
      ),
    );
  }
}
