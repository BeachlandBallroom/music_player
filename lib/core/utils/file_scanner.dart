import 'dart:io';

class FileScanner {
  static Future<List<File>> scanMusic() async {
    final dir = Directory('/storage/emulated/0/Music');
    final files = dir.listSync(recursive: true);

    return files
        .whereType<File>()
        .where((f) => f.path.endsWith('.mp3'))
        .toList();
  }
}