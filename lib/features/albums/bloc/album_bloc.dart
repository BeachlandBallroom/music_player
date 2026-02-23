import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/repositories/song_repository.dart';
import 'package:music_player/features/albums/bloc/album_event.dart';
import 'package:music_player/features/albums/bloc/album_state.dart';

class AlbumsBloc extends Bloc<AlbumsEvent, AlbumsState> {
  final SongRepository repository;

  AlbumsBloc(this.repository) : super(AlbumsState()) {
    on<LoadAlbums>((event, emit) async {
      final albums = await repository.getAlbums();
      emit(AlbumsState(albums: albums));
    });
  }
}