import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model/check_mask.dart';

void main() async {
  final maskStores = await checkMaskStock();
  final plentyMaskStores =
      maskStores.where((e) => e.remainStat == 'plenty').toList();

  print('마스크가 충분한 스토어는 ${plentyMaskStores.length}개 입니다');
}

Future<List<Stores>> checkMaskStock() async {
  final page = 0;
  final limit = 20;
  final response = await http.get(
      Uri.parse('http://104.198.248.76:3000/mask?page=$page&limit=$limit'));

  final json = jsonDecode(response.body);
  final checkMask = CheckMask.fromJson(json);

  return checkMask.stores;
}
