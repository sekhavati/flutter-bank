import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:flutterbank/widgets/card/card_balance.dart';
import 'package:flutterbank/widgets/card/card_logo.dart';

class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kSwatchColor2,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CardLogo(),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            CardBalance(),
          ],
        ),
      ),
    );
  }
}
