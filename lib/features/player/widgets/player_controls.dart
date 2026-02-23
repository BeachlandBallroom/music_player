import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/player_bloc.dart';
import '../bloc/player_event.dart';
import '../bloc/player_state.dart';

class PlayerControls extends StatelessWidget {
  const PlayerControls({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        return IconButton(
          icon: Icon(
              state.isPlaying ? Icons.pause : Icons.play_arrow),
          onPressed: () {
            if (state.isPlaying) {
              context.read<PlayerBloc>().add(PauseSong());
            }
          },
        );
      },
    );
  }
}