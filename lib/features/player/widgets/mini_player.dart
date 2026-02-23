import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/player_bloc.dart';
import '../bloc/player_state.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlayerBloc, PlayerState>(
      builder: (context, state) {
        if (state.currentPath == null) {
          return const SizedBox.shrink();
        }

        return Container(
          height: 60,
          color: Colors.grey.shade300,
          child: Row(
            children: [
              const Icon(Icons.music_note),
              const SizedBox(width: 10),
              Expanded(child: Text(state.currentPath!)),
              const Icon(Icons.play_arrow),
            ],
          ),
        );
      },
    );
  }
}