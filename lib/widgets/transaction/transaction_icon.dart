import 'package:flutter/material.dart';
import 'package:flutterbank/constants/colors.dart';

class TransactionIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: kSwatchColor1,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Icon(
        Icons.shopping_basket,
        color: kSwatchColor2,
      ),
    );
  }
}
