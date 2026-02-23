import '../entities/song.dart';
import '../entities/album.dart';

abstract class SongRepository {
  Future<List<Song>> getSongs();
  Future<List<Album>> getAlbums();
}