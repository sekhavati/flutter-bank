import 'dart:convert';

import 'package:flutterbank/mocks/account.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:flutterbank/models/account.dart';

class BankClient {
  final BaseClient _httpClient = MockClient(mockRequestHandler);

  Future<Account> getAccountDetails() async {
    final response = await _httpClient.get("/account");
    return Account.fromJson(json.decode(response.body));
  }
}

Future<Response> mockRequestHandler(Request request) {
  String response = "";
  int statusCode = 200;

  switch (request.url.path) {
    case "/account":
      response = accountJson;
      break;
    default:
      statusCode = 400;
      break;
  }

  return Future.delayed(
    Duration(seconds: 1),
    () => Response(response, statusCode),
  );
}
