import 'dart:math';

class Cleric {
  static const int maxHp = 50;
  static const int maxMp = 10;

  String name;
  int hp;
  int mp;

  Cleric({required this.name, this.hp = maxHp, this.mp = maxMp});

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHp;
      print('HP가 최대로 회복됨');
    } else {
      print('MP 부족');
    }
  }

  int pray(int time) {
    int recoveryMp = time + Random().nextInt(3);
    int maxRecoverMp = maxMp - mp;
    int gain = min(maxRecoverMp, recoveryMp);

    mp += gain;
    print("$gain 만큼회복");

    return gain;
  }
}
