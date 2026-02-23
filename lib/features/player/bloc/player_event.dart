abstract class PlayerEvent {}

class PlaySong extends PlayerEvent {
  final String path;
  PlaySong(this.path);
}

class PauseSong extends PlayerEvent {}