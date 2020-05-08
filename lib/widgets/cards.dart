import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';
import 'package:flutterbank/models/card.dart';
import 'package:flutterbank/widgets/card/card.dart';
import 'package:flutterbank/widgets/transaction/transaction.dart';

class Cards extends StatelessWidget {
  final List<CardModel> cards;

  Cards({
    this.cards,
  });

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
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          // @todo: use all cards in the future and display in a carousel format
          child: Card(
            number: cards[0].number,
            balance: cards[0].balance,
          ),
        ),
      ],
    );
  }
}
