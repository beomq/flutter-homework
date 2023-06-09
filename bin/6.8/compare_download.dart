import 'dart:typed_data';
import 'package:http/http.dart' as http;

void main() async {
  final test1Result = await test1();
  final test2Result = await test2();

  test1Result > test2Result
      ? print('병렬 처리가 순차 처리보다 ${test1Result - test2Result}만큼 빠르다')
      : print('순차 처리가 병렬 처리보다 ${test2Result - test1Result}만큼 빠르다');
}

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<Duration> test1() async {
  final url = 'http://alimipro.com/favicon.ico';

  Stopwatch stopwatch = Stopwatch()..start();
  print('순차 처리 시작');

  await downloadImage(url);
  await downloadImage(url);
  await downloadImage(url);
  print('순차 처리 끝');

  print('걸린 시간 ${stopwatch.elapsed}');
  return stopwatch.elapsed;
}

Future<Duration> test2() async {
  final url = 'http://alimipro.com/favicon.ico';

  Stopwatch stopwatch = Stopwatch()..start();
  print('병렬 처리 시작');

  await Future.wait([
    downloadImage(url),
    downloadImage(url),
    downloadImage(url),
  ]);
  print('병렬 처리 끝');
  print('걸린 시간 ${stopwatch.elapsed}');

  return stopwatch.elapsed;
}
