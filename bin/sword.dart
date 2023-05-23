class Sword {
  String name;
  int damage;

  //required 필수사항, {} 이름이 있는 인자 name parameter를 쓸 수 있다. 둘이 세트 느낌
  //맨위에 ,를 넣으면 아래로 깔끔하게 정리해줌~
  Sword({
    required this.name,
    required this.damage,
  });
}
