import 'package:flutter/widgets.dart';
import 'package:flutterbank/screens/home.dart';

class HomeScreenController extends StatefulWidget {
  static const String kRouteId = "home";

  @override
  _HomeScreenControllerState createState() => _HomeScreenControllerState();
}

class _HomeScreenControllerState extends State<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
