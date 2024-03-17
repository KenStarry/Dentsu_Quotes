import 'package:dentsu_quotes/feature_auth/domain/use_cases/get_user_data_from_db.dart';
import 'package:dentsu_quotes/feature_auth/domain/use_cases/sign_in.dart';
import 'package:dentsu_quotes/feature_auth/domain/use_cases/sign_out.dart';
import 'package:dentsu_quotes/feature_auth/domain/use_cases/sign_up.dart';

import 'auth_subscription.dart';
import 'get_auth_user.dart';

class AuthUseCases {
  final GetUserDataFromDB getUserDataFromDB;
  final SignUp signUp;
  final SignIn signIn;
  final SignOut signOut;
  final GetAuthUser getAuthUser;
  final AuthSubscription authSubscription;

  AuthUseCases(
      {required this.getUserDataFromDB,
      required this.signUp,
      required this.signIn,
      required this.signOut,
      required this.getAuthUser,
      required this.authSubscription});
}
