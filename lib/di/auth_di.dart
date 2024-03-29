import 'package:dentsu_quotes/feature_auth/domain/use_cases/get_user_data_from_db.dart';
import 'package:dentsu_quotes/feature_auth/domain/use_cases/listen_to_user_data_on_db.dart';
import 'package:dentsu_quotes/feature_auth/domain/use_cases/update_user_data_on_db.dart';
import 'package:get_it/get_it.dart';

import '../feature_auth/data/repository/auth_repository_impl.dart';
import '../feature_auth/domain/repository/auth_repository.dart';
import '../feature_auth/domain/use_cases/auth_subscription.dart';
import '../feature_auth/domain/use_cases/auth_use_cases.dart';
import '../feature_auth/domain/use_cases/get_auth_user.dart';
import '../feature_auth/domain/use_cases/sign_in.dart';
import '../feature_auth/domain/use_cases/sign_out.dart';
import '../feature_auth/domain/use_cases/sign_up.dart';

void authDI({required GetIt locator}) {
  /// Repository
  locator.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());

  /// Use Cases
  locator.registerLazySingleton<AuthUseCases>(() => AuthUseCases(
      getUserDataFromDB: GetUserDataFromDB(),
      listenToUserDataOnDB: ListenToUserDataOnDB(),
      updateUserDataOnDB: UpdateUserDataOnDB(),
      signUp: SignUp(),
      signIn: SignIn(),
      signOut: SignOut(),
      getAuthUser: GetAuthUser(),
      authSubscription: AuthSubscription()));
}
