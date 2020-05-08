import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:intl/intl.dart';

class TransactionDescription extends StatelessWidget {
  final String description;
  final DateTime time;

  TransactionDescription({this.description, this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          description,
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
          DateFormat('d MMMM - kk:mm ').format(time),
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
