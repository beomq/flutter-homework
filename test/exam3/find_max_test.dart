import 'package:test/test.dart';

import '../../bin/unit_test/exam3/find_max.dart';

void main() {
  test('최대값 찾기', () {
    expect(findMax([2, 5, 1, 9, 3]), 9);
    expect(findMax([2, 5, 1, 9, 9]), 9);
    expect(findMax([-2, -5, -1, -9, -1]), -1);
  });
}
