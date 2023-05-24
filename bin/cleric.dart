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

  int pray(int time) {
    int recoveryMp = time + Random().nextInt(3);
    mp += recoveryMp;
    print('MP가 회복됨');
    return recoveryMp;
  }
}
