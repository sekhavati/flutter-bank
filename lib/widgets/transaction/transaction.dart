import 'package:flutter/material.dart';
import 'package:flutterbank/widgets/transaction/transaction_amount.dart';
import 'package:flutterbank/widgets/transaction/transaction_description.dart';
import 'package:flutterbank/widgets/transaction/transaction_icon.dart';

class Transaction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        TransactionIcon(),
        Expanded(
          child: TransactionDescription(),
        ),
        TransactionAmount(),
      ],
    );
  }
}

//Row(
//      crossAxisAlignment: CrossAxisAlignment.start,
//      children: <Widget>[
//        Icon(Icons.shopping_cart),
//        Column(
//          crossAxisAlignment: CrossAxisAlignment.start,
//          children: <Widget>[
//            Text('Tesco'),
//            Text(
//              DateTime.now().toString(),
//            ),
//          ],
//        ),
//        Text('£12.99')
//      ],
//    )
