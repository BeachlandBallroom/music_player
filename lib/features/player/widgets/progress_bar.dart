import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final Duration current;
  final Duration total;
  final Function(Duration) onSeek;

  const ProgressBar({
    super.key,
    required this.current,
    required this.total,
    required this.onSeek,
  });

  @override
  Widget build(BuildContext context) {
    return Slider(
      value: current.inSeconds.toDouble(),
      max: total.inSeconds.toDouble(),
      onChanged: (value) =>
          onSeek(Duration(seconds: value.toInt())),
    );
  }
}