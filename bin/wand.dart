class Wand {
  String name;
  double power;

  Wand({required this.name, required this.power}) {
    int? length = name?.length;
    if (length != null && length < 3) {
      throw Exception('완드 이름의 길이를 확인하세요');
    } else if (length == null) {
      throw Exception('완드의 이름을 입력하세요');
    }
  }
}
