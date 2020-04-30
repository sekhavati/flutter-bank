import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff020203),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '**** 6544',
                style: TextStyle(color: Colors.white),
              ),
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
                  Text(
                    'Balance',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '£4,537.24',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
