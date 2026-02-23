import '../../domain/entities/song.dart';
import '../../domain/entities/album.dart';
import '../../domain/repositories/song_repository.dart';
import '../datasources/local_song_datasource.dart';

class SongRepositoryImpl implements SongRepository {
  final LocalSongDataSource datasource;

  SongRepositoryImpl(this.datasource);

  @override
  Future<List<Song>> getSongs() async {
    return datasource.fetchSongs();
  }

  @override
  Future<List<Album>> getAlbums() async {
    final songs = await datasource.fetchSongs();

    final map = <String, List<Song>>{};

    for (var song in songs) {
      map.putIfAbsent(song.album, () => []).add(song);
    }

    return map.entries
        .map((e) => Album(name: e.key, songs: e.value))
        .toList();
  }
}