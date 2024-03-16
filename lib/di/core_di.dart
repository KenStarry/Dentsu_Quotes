import 'package:dentsu_quotes/core/data/repository/core_repository_impl.dart';
import 'package:dentsu_quotes/core/domain/repository/core_repository.dart';
import 'package:get_it/get_it.dart';

void coreDI({required GetIt locator}) {
  /// Core Repository
  locator.registerLazySingleton<CoreRepository>(() => CoreRepositoryImpl());
}
