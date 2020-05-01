import 'package:flutter/widgets.dart';

class CardLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('images/visa-logo.png'),
      height: 30,
      width: 40,
    );
  }
}
