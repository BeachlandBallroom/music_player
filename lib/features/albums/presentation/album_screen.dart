import 'package:flutter/material.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../domain/repositories/song_repository.dart';
import 'album_details_screen.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: sl<SongRepository>().getAlbums(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const CircularProgressIndicator();

        final albums = snapshot.data!;
        return ListView.builder(
          itemCount: albums.length,
          itemBuilder: (_, i) => ListTile(
            title: Text(albums[i].name),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AlbumDetailsScreen(album: albums[i]),
              ),
            ),
          ),
        );
      },
    );
  }
}