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
  bool _isLoading = true;
  Account _account;

  void loadAccountDetails() async {
    Account account = await BankClient().getAccountDetails();

    setState(() {
      _account = account;
      updateLoadingStatus();
    });
  }

  void updateLoadingStatus() {
    setState(() {
      _isLoading = _account == null;
    });
  }

  @override
  void initState() {
    super.initState();

    loadAccountDetails();
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? LoadingSpinner() : HomeScreen(account: _account);
  }
}
