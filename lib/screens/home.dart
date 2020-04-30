import 'package:flutter/material.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:flutterbank/widgets/transaction/transaction.dart';

class HomeScreen extends StatelessWidget {
  static String kRouteId = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Transaction(),
            Transaction(),
            Transaction(),
          ],
        ),
      ),
    );
  }
}
