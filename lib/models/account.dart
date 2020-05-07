class Account {
  final double totalBalance;

  Account({this.totalBalance});

  factory Account.fromJson(Map<String, dynamic> json) {
    final double totalBalance = json['totalBalance'];

    return Account(totalBalance: totalBalance);
  }
}
