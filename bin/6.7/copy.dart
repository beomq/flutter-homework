import 'dart:io';

Future<void> modifyAndSaveCSV() async {
  try {
    final file =
        File('/Users/beom_q/StudioProjects/untitled7/bin/6.7/sample.csv');
    final lines = await file.readAsLines();

    final modifiedLines =
        lines.map((line) => line.replaceAll('한석봉', '김석봉')).toList();

    final copyFile =
        File('/Users/beom_q/StudioProjects/untitled7/bin/6.7/sample_copy.csv');
    await copyFile.writeAsString(modifiedLines.join('\n'));

    print('수정 및 저장이 완료되었습니다.');
  } catch (e) {
    print('오류가 발생했습니다: $e');
  }
}

void main() {
  modifyAndSaveCSV();
}
