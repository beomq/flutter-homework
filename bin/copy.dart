import 'dart:io';

void copy(String source, String target) {
  final sourceFile = File(source);
  final targetFile = File(target);

  try {
    final text = sourceFile.readAsStringSync();
    targetFile.writeAsStringSync(text);
    print('복사 성공');
  } catch (e) {
    print('복사 실패');
  }
}

void main() {
  copy('company.txt', 'copy.txt');
}
