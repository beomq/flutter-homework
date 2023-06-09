import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

void main() async {
  await saveImage();
}

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List bytes, String fileName) async {
  final file = File(fileName);

  final save = await file.writeAsBytes(bytes);
  return save;
}

Future<void> saveImage() async {
  final url = 'http://alimipro.com/favicon.ico';
  final defaultImageUrl =
      'https://pds.joongang.co.kr/news/component/htmlphoto_mmdata/202305/12/e53dd2d7-5c8f-42c1-bc2a-2a12157191b1.jpg';
  final fileName = '/Users/beom_q/StudioProjects/untitled7/bin/6.8/icon.ico';

  Stopwatch stopwatch = Stopwatch()..start();

  try {
    final bytes = await downloadImage(url);

    print('다운로드 시작');

    await saveFile(bytes, fileName);
    stopwatch.stop(); // 작은 디테일
    print('다운로드 끝');
    print('=========');
    print('소요시간 : ${stopwatch.elapsed}');
    print('용량 : ${bytes.lengthInBytes}bytes');
  } catch (e) {
    print('url을 확인해 주세요');
    final bytes = await downloadImage(defaultImageUrl);
    await saveFile(bytes, fileName);
  }
}
