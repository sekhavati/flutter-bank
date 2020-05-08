import 'dart:convert';

import 'package:flutterbank/mocks/account.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:flutterbank/models/account.dart';

class BankClient {
  final BaseClient _httpClient = MockClient(_mockRequestHandler);

  Future<Account> getAccountDetails() async {
    final response = await _httpClient.get("/account");
    return Account.fromJson(json.decode(response.body));
  }
}

Future<Response> _mockRequestHandler(Request request) {
  int statusCode = 500;
  String response = "";

  switch (request.url.path) {
    case "/account":
      statusCode = 200;
      response = accountJson;
      break;
    default:
      statusCode = 404;
      break;
  }

  // Fake an async response
  return Future.delayed(
    Duration(seconds: 3),
    () => Response(response, statusCode),
  );
}
