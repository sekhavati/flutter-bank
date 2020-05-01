import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '**** 6544',
      style: TextStyle(
        color: Colors.white,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
