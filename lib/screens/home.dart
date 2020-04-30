import 'package:flutter/material.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:flutterbank/widgets/transaction.dart';

class HomeScreen extends StatelessWidget {
  static String kRouteId = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Transaction(),
      ),
    );
  }
}
