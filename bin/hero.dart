import 'dart:math';

import 'sword.dart';

class Hero {
  String name;
  int hp;
  Sword? sword;
  static int money = 100;

  //생성자의 형식대로 가져다 써야함

  Hero({
    required this.name,
    required this.hp,
    this.sword,
  });

  void attack() {
    if (sword == null) {
      print('주먹으로 떄린다');
    } else {
      print('${sword?.name}칼로 ${sword?.damage}때린다');
    }
  }

  void run() {}

  void sleep() {
    hp = 200;
    print('$name 은 잠을자고 회복했다');
  }

  static void setRandomMoney() {
    money = Random().nextInt(100);
  } //다른 영역~
}
