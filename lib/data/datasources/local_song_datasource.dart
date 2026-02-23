import 'dart:io';
import 'package:audio_metadata_reader/audio_metadata_reader.dart';
import '../../domain/entities/song.dart';

class LocalSongDataSource {
  Future<List<Song>> fetchSongs() async {
    final dir = Directory('/storage/emulated/0/Music');
    final files = dir.listSync(recursive: true);

    return files
        .whereType<File>()
        .where((f) => f.path.endsWith('.mp3'))
        .map((file) {
      final metadata = readMetadata(file);
      return Song(
        path: file.path,
        title: metadata.title ?? 'Unknown',
        artist: metadata.artist ?? 'Unknown',
        album: metadata.album ?? 'Unknown',
      );
    }).toList();
  }
}