void main() {
  final numString = '10';

  numw(numString);
  // int num;
  //
  // try {
  //   num = int.parse(numString);
  // } catch (e) {
  //   num = 0;
  // }
  // print(num);
}

void numw(String numString) {
  int num;

  try {
    num = int.parse(numString);
    print('문제없음');
  } catch (e) {
    num = 0;
    print('문제');
  }
  print(num);
}
