import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';

class TransactionDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Taxi',
          style: TextStyle(
            color: kSwatchColor2,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          '8:00 AM',
          style: TextStyle(
            color: kSwatchColor3,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
