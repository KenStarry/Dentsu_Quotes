import 'package:dentsu_quotes/core/data/repository/core_repository_impl.dart';
import 'package:dentsu_quotes/core/domain/repository/core_repository.dart';
import 'package:dentsu_quotes/core/domain/use_cases/core_use_cases.dart';
import 'package:dentsu_quotes/core/domain/use_cases/listen_to_internet_status.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void coreDI({required GetIt locator}) {
  
  /// Supabase Client
  locator.registerLazySingleton<SupabaseClient>(() => Supabase.instance.client);
  
  /// Core Repository
  locator.registerLazySingleton<CoreRepository>(() => CoreRepositoryImpl());

  /// Core Use Cases
  locator.registerLazySingleton<CoreUseCases>(
      () => CoreUseCases(listenToInternetStatus: ListenToInternetStatus()));
}
