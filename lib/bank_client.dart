import 'package:http/http.dart';
import 'package:http/testing.dart';

/*
  /account/{123}
  /card/{456}
  /card/{456}/transactions
  /card/{456}/transaction/{789}
 */

class BankClient {
  final BaseClient _httpClient = MockClient(mockRequestHandler);

  void getAccountDetails() async {
    final response = await _httpClient.get("/account");
    print('response');
    print(response.body);
  }
}

Future<Response> mockRequestHandler(Request request) {
  print('request');
  print(request);

  String response = "";
  int statusCode = 200;

  switch (request.url.path) {
    case "/account":
      response = "hello-account";
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
