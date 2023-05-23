import 'dart:math';

import 'cleric_util.dart';

class Cleric {
  String name;
  int hp;
  int mp;

  Cleric({required this.name, this.hp = 50, this.mp = 10});

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = Max_HP;
      print('HP가 최대로 회복됨');
    } else {
      print('MP 부족');
    }
  }

  void pray(int time) {
    mp += time + Random().nextInt(3);
    print('MP가 회복됨');
  }
}
