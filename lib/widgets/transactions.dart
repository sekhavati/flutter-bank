import 'package:flutter/material.dart';
import 'transaction.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Transaction(),
        Transaction(),
        Transaction(),
      ],
    );
  }
}
