import 'dart:convert';
import 'dart:math';

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

  final randomDelay = Random().nextInt(4) + 1; // range of 1-5

  // Fake an async response
  return Future.delayed(
    Duration(
      seconds: randomDelay,
    ),
    () => Response(response, statusCode),
  );
}
