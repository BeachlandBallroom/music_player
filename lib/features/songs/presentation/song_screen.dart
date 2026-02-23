import 'package:flutter/material.dart';
import '../../../../core/services/service_locator.dart';
import '../../../../domain/repositories/song_repository.dart';

class SongsScreen extends StatefulWidget {
  const SongsScreen({super.key});

  @override
  State<SongsScreen> createState() => _SongsScreenState();
}

class _SongsScreenState extends State<SongsScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: sl<SongRepository>().getSongs(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const CircularProgressIndicator();

        final songs = snapshot.data!;
        return ListView.builder(
          itemCount: songs.length,
          itemBuilder: (_, i) => ListTile(
            title: Text(songs[i].title),
            subtitle: Text(songs[i].artist),
          ),
        );
      },
    );
  }
}