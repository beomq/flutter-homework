import 'dart:math';

class Trader {
  String name;
  String city;

  Trader(this.name, this.city);
}

class Transaction {
  Trader trader;
  int year;
  int value;

  Transaction(this.trader, this.year, this.value);
}

final transactions = [
  Transaction(Trader("Brian", "Cambridge"), 2011, 300),
  Transaction(Trader("Raoul", "Cambridge"), 2012, 1000),
  Transaction(Trader("Raoul", "Cambridge"), 2011, 400),
  Transaction(Trader("Mario", "Milan"), 2012, 710),
  Transaction(Trader("Mario", "Milan"), 2012, 700),
  Transaction(Trader("Alan", "Cambridge"), 2012, 950),
];

void main() {
  // 1번 문제
  final transactionSorter = transactions.where((e) => e.year == 2011).toList();
  transactionSorter.sort((a, b) => a.value.compareTo(b.value));

  final valueTraderSort = transactionSorter.map((e) => e.trader.name).toList();

  print(valueTraderSort);

  // 2번 문제
  final cities = transactions.map((e) => e.trader.city).toSet().toList();
  print(cities);

  // 3번 문제
  final cambridgeTraders = transactions
      .where((e) => e.trader.city == 'Cambridge')
      .map((e) => e.trader.name)
      .toSet()
      .toList();

  cambridgeTraders.sort();
  print(cambridgeTraders);

  // 4번 문제
  final traders = transactions.map((e) => e.trader.name).toSet().toList();

  traders.sort();

  print(traders);

  // 5번문제
  final isMilan = transactions.any((e) => e.trader.city == 'Milan');

  print(isMilan);

  // 6번 문제
  final cambridge =
      transactions.where((e) => e.trader.city == 'Cambridge').toList();
  print(cambridge);

  // 7,8번 문제
  final result = transactions.map((e) => e.value).toList();
  final maxResult = result.reduce(max);
  final minResult = result.reduce(min);

  print(maxResult);
  print(minResult);
}
