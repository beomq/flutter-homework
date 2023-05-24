import 'hero.dart';
import 'wand.dart';

class Wizard {
  String name;
  int hp;
  int mp;
  Wand? wand;

  Wizard({
    required this.name,
    required this.hp,
    required this.mp,
    required this.wand,
  }) {
    if (name.length < 3) {
      throw Exception('마법사의 이름의 길이를 확인하세요');
    }
    if (mp < 0) {
      throw Exception('마나는 0이상이어야 합니다');
    }
    if (wand == null) {
      throw Exception('지팡이를 착용하세요');
    }
  }
  void heal(Hero hero) {
    hero.hp += 10;
  }

  void hurt(Wizard wizard) {
    wizard.hp -= 4;
    if (hp < 0) {
      hp = 0;
    }
  }
}
