import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart';
import 'package:http/testing.dart';

import 'package:flutterbank/mocks/account.dart';
import 'package:flutterbank/mocks/card.dart';
import 'package:flutterbank/models/card.dart';
import 'package:flutterbank/models/account.dart';

const ACCOUNT_ENDPOINT = "/account";
const CARD_ENDPOINT = "/card";

class BankClient {
  final BaseClient _httpClient = MockClient(_mockRequestHandler);

  Future<AccountModel> getAccountDetails() async {
    final response = await _httpClient.get(ACCOUNT_ENDPOINT);
    return AccountModel.fromJson(json.decode(response.body));
  }

  Future<CardModel> getCardDetails() async {
    final response = await _httpClient.get(CARD_ENDPOINT);
    return CardModel.fromJson(json.decode(response.body));
  }
}

Future<Response> _mockRequestHandler(Request request) {
  int statusCode = 500;
  String response = "";

  switch (request.url.path) {
    case ACCOUNT_ENDPOINT:
      statusCode = 200;
      response = accountJson;
      break;
    case CARD_ENDPOINT:
      statusCode = 200;
      response = cardJson;
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
