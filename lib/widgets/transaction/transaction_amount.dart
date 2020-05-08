import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';

class TransactionAmount extends StatelessWidget {
  final double amount;

  TransactionAmount(this.amount);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          '\$',
          style: TextStyle(
            color: kSwatchColor3,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 2,
        ),
        Text(
          amount.toStringAsFixed(2),
          style: TextStyle(
            color: kSwatchColor2,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
