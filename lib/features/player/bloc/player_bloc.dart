import 'package:flutter_bloc/flutter_bloc.dart';
import '../services/audio_player_service.dart';
import 'player_event.dart';
import 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final AudioPlayerService service;

  PlayerBloc(this.service) : super(PlayerState()) {
    on<PlaySong>((event, emit) async {
      await service.setSong(event.path);
      await service.play();
      emit(state.copyWith(
        isPlaying: true,
        currentPath: event.path,
      ));
    });

    on<PauseSong>((event, emit) async {
      await service.pause();
      emit(state.copyWith(isPlaying: false));
    });
  }
}