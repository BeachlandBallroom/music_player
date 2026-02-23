import 'package:get_it/get_it.dart';
import '../../data/datasources/local_song_datasource.dart';
import '../../data/repositories/song_repository_impl.dart';
import '../../domain/repositories/song_repository.dart';

final sl = GetIt.instance;

Future<void> setupLocator() async {
  sl.registerLazySingleton(() => LocalSongDataSource());
  sl.registerLazySingleton<SongRepository>(
        () => SongRepositoryImpl(sl()),
  );
}