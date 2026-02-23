import '../../domain/entities/album.dart';
import '../../domain/entities/song.dart';

class AlbumModel extends Album {
  AlbumModel({required super.name, required super.songs});

  factory AlbumModel.fromSongs(String name, List<Song> songs) {
    return AlbumModel(name: name, songs: songs);
  }
}