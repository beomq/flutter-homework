import 'cleric.dart';
import 'hero.dart';
import 'sword.dart';

void main() {
  //새로운 인스턴스
  final hero1 = Hero(name: 'ddd', hp: 11);
  hero1.attack();
  hero1.sleep();
  final sword = Sword(name: '불의검', damage: 111);
  hero1.sword = sword;
  hero1.attack();

  final cleric = Cleric(name: 'dd', hp: 11, mp: 5);

  cleric.selfAid();
  print(cleric.hp);
  cleric.pray(2);
  print(cleric.mp);

  final cleric1 = Cleric(name: '아서스');
  final cleric2 = Cleric(name: '아서스', hp: 40);
  final cleric3 = Cleric(name: '아서스', hp: 35, mp: 5);

  print(cleric1.hp);
  print(cleric2.mp);
  print(cleric3.mp);
}
