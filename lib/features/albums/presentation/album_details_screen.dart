import 'package:flutter/material.dart';
import '../../../../domain/entities/album.dart';

class AlbumDetailsScreen extends StatelessWidget {
  final Album album;

  const AlbumDetailsScreen({super.key, required this.album});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(album.name)),
      body: ListView(
        children: album.songs
            .map((song) => ListTile(title: Text(song.title)))
            .toList(),
      ),
    );
  }
}