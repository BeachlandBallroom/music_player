import '../../../domain/entities/album.dart';

class AlbumsState {
  final List<Album> albums;

  AlbumsState({this.albums = const []});
}