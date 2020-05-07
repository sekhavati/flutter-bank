import 'package:flutter/widgets.dart';
import 'package:flutterbank/models/account.dart';
import 'package:flutterbank/screens/home.dart';
import 'package:provider/provider.dart';

class HomeScreenController extends StatefulWidget {
  static const String kRouteId = "home";

  @override
  _HomeScreenControllerState createState() => _HomeScreenControllerState();
}

class _HomeScreenControllerState extends State<HomeScreenController> {
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: HomeScreen(),
      create: (_) {
        return Account(totalBalance: 456.99);
      },
    );
  }
}
