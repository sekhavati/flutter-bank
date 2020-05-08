import 'package:flutter/widgets.dart';
import 'package:flutterbank/bank_client.dart';
import 'package:flutterbank/models/account.dart';
import 'package:flutterbank/screens/home.dart';
import 'package:flutterbank/widgets/loading_spinner.dart';

class HomeScreenController extends StatefulWidget {
  static const String kRouteId = "home";

  @override
  _HomeScreenControllerState createState() => _HomeScreenControllerState();
}

class _HomeScreenControllerState extends State<HomeScreenController> {
  final BankClient _bankClient = BankClient();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.wait([
        _bankClient.getAccountDetails(),
      ]),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return LoadingSpinner();
        }

        final account = snapshot.data[0];

        return HomeScreen(
          account: account,
        );
      },
    );
  }
}
