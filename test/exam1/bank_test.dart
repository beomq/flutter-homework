import 'package:test/test.dart';

import '../../bin/unit_test/exam1/bank.dart';

void main() {
  test('은행 고객 개인정보', () {
    Map<String, dynamic> json = {
      'name': '홍길동',
      'address': '서울시 어쩌구 저쩌구',
      'phone': '010-1111-2222',
    };
    Bank customer = Bank.fromJson(json);
    expect(customer.name, '홍길동');
    expect(customer.address, '서울시 어쩌구 저쩌구');
    expect(customer.phone, '010-1111-2222');
  });
}
