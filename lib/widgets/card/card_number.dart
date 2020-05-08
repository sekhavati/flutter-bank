import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardNumber extends StatelessWidget {
  final int number;

  CardNumber(this.number);

  @override
  Widget build(BuildContext context) {
    return Text(
      '**** $number',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
