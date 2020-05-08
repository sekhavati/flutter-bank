import 'package:flutterbank/models/transaction.dart';

class CardModel {
  final double balance;
  final int number;
  final List<TransactionModel> transactions;

  CardModel({
    this.balance,
    this.number,
    this.transactions,
  });

  factory CardModel.fromJson(Map<String, dynamic> json) {
    final double balance = json['balance'];
    final int number = json['number'];
    final List<TransactionModel> transactions = List<TransactionModel>();

    json['transactions'].forEach((t) {
      transactions.add(TransactionModel.fromJson(t));
    });

    return CardModel(
      balance: balance,
      number: number,
      transactions: transactions,
    );
  }
}
