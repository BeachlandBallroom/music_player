import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/repositories/song_repository.dart';
import 'package:music_player/features/songs/bloc/song_event.dart';
import 'package:music_player/features/songs/bloc/song_state.dart';

class SongsBloc extends Bloc<SongsEvent, SongsState> {
  final SongRepository repository;

  SongsBloc(this.repository) : super(SongsState()) {
    on<LoadSongs>((event, emit) async {
      final songs = await repository.getSongs();
      emit(SongsState(songs: songs));
    });
  }
}