class TransactionModel {
  final double amount;
  final String description;
  final DateTime time;

  TransactionModel({this.amount, this.description, this.time});

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    final double amount = json['amount'];
    final String description = json['description'];
    final DateTime time = DateTime.parse(json['time']);

    return TransactionModel(
      amount: amount,
      description: description,
      time: time,
    );
  }
}
