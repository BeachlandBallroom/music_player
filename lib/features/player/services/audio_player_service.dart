import 'package:just_audio/just_audio.dart';

class AudioPlayerService {
  final AudioPlayer _player = AudioPlayer();

  Stream<Duration> get positionStream => _player.positionStream;
  Stream<bool> get playingStream => _player.playingStream;

  Future<void> setSong(String path) async {
    await _player.setFilePath(path);
  }

  Future<void> play() async => _player.play();
  Future<void> pause() async => _player.pause();
  Future<void> seek(Duration position) async =>
      _player.seek(position);

  void dispose() {
    _player.dispose();
  }
}