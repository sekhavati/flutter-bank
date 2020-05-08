class AccountModel {
  final double totalBalance;

  AccountModel({this.totalBalance});

  factory AccountModel.fromJson(Map<String, dynamic> json) {
    final double totalBalance = json['totalBalance'];

    return AccountModel(totalBalance: totalBalance);
  }
}
