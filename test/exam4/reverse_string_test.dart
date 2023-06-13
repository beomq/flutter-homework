import 'package:test/test.dart';

import '../../bin/unit_test/exam4/reverse_string.dart';

void main() {
  test('문자열 뒤집기', () {
    expect(reverseString('Hello'), 'olleH');
    expect(reverseString('Hello World'), 'dlroW olleH');
    expect(reverseString('Hello **'), '** olleH');
  });
}
