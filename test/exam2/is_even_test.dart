import 'package:test/test.dart';

import '../../bin/unit_test/exam2/is_even.dart';

void main() {
  test('짝수 판별', () {
    expect(isEven(4), true);
    expect(isEven(5), false);
  });
}
