import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('**** 6544'),
              Image(
                image: AssetImage('images/visa-logo.jpg'),
                height: 56,
                width: 56,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Balance'),
                  Text('£4,537.24'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
