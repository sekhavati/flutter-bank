import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          Icons.menu,
          color: Colors.white,
        ),
        Text(
          'Bank',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
          child: Image(
            image: AssetImage('images/user-avatar.png'),
          ),
        ),
      ],
    );
  }
}
