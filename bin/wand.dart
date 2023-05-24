class Wand {
  String name;
  double power;

  Wand({required this.name, required this.power}) {
    if (name.length < 3) {
      throw Exception('완드 이름의 길이를 확인하세요');
    }
    if (power < 0.5 || power > 100) {
      throw Exception('완드의 파워는 0.5에서 100사이여야 합니다');
    }
  }
}
