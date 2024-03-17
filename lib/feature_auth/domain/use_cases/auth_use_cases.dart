import 'package:dentsu_quotes/feature_auth/domain/use_cases/sign_in.dart';
import 'package:dentsu_quotes/feature_auth/domain/use_cases/sign_out.dart';
import 'package:dentsu_quotes/feature_auth/domain/use_cases/sign_up.dart';

import 'auth_subscription.dart';
import 'get_auth_user.dart';

class AuthUseCases {
  final SignUp signUp;
  final SignIn signIn;
  final SignOut signOut;
  final GetAuthUser getAuthUser;
  final AuthSubscription authSubscription;

  AuthUseCases(
      {required this.signUp,
      required this.signIn,
      required this.signOut,
      required this.getAuthUser,
      required this.authSubscription});
}
