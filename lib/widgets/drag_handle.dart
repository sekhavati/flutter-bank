import 'package:flutter/widgets.dart';
import 'package:flutterbank/constants/colors.dart';

class DragHandle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 40,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: kSwatchColor1,
        borderRadius: BorderRadius.all(
          Radius.circular(18),
        ),
      ),
    );
  }
}
