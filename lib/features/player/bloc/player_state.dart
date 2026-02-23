class PlayerState {
  final bool isPlaying;
  final String? currentPath;

  PlayerState({
    this.isPlaying = false,
    this.currentPath,
  });

  PlayerState copyWith({
    bool? isPlaying,
    String? currentPath,
  }) {
    return PlayerState(
      isPlaying: isPlaying ?? this.isPlaying,
      currentPath: currentPath ?? this.currentPath,
    );
  }
}