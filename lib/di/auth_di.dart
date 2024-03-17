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
      signUp: SignUp(),
      signIn: SignIn(),
      signOut: SignOut(),
      getAuthUser: GetAuthUser(),
      authSubscription: AuthSubscription()));
}
