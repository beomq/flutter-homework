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

  final transactionSorter1 = transactions.where((e) => e.year == 2011).toList()
    ..sort((a, b) => a.value.compareTo(b.value))
    ..map((e) => e.trader.name).toList();

  // cascade 연산자는 transactions 리스트에 대해 sort() 메서드를 호출한 후 반환값이
  // 아니라 transactions 자체를 반환하기 때문에, transactionSorter1은 정렬되기 전의 리스트를
  // 그대로 가지고 있다. 따라서 아래의 두 값은 다르다.
  print(transactionSorter1);
  print(valueTraderSort);

  final transactionSorter2 = transactions.where((e) => e.year == 2011).toList()
    ..sort((a, b) => a.value.compareTo(b.value));
  final valueTraderSort2 =
      transactionSorter2.map((e) => e.trader.name).toList();

  print(valueTraderSort2);

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

  // sort 메서드는 리스트를 직접 정렬 하는게 아니라 리스트를 정렬하고 null을 반환하는데,
  // 이는 리스트를 변경하는 것이 아니라 정렬된 새로운 리스트를 반환한다. 따라서 별도의 줄에 사용해야함
  traders.sort();

  final traders1 = transactions.map((e) => e.trader.name).toSet().toList()
    ..sort();
  // cascade연산자(..) 을 사용하면 연속된 연산이 가능하다. 코드를 간결하게 만들어줌
  print(traders);
  print(traders1);

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
