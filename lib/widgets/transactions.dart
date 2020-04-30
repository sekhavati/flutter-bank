import 'package:flutter/widgets.dart';
import 'package:flutterbank/widgets/transaction/transaction.dart';

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(
            bottom: 24,
          ),
          child: Transaction(),
        );
      },
    );
  }
}
