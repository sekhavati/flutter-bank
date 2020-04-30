import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:flutterbank/widgets/transaction/transaction.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Cards',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: kSwatchColor2,
          ),
        ),
        SizedBox(
          height: 28,
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}
