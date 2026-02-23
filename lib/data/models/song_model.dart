import '../../domain/entities/song.dart';

class SongModel extends Song {
  SongModel({
    required super.path,
    required super.title,
    required super.artist,
    required super.album,
  });

  factory SongModel.fromSong(Song song) {
    return SongModel(
      path: song.path,
      title: song.title,
      artist: song.artist,
      album: song.album,
    );
  }
}