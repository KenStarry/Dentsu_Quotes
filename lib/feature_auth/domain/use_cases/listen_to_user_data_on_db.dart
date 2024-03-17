import 'package:dentsu_quotes/feature_auth/domain/model/my_user.dart';
import 'package:dentsu_quotes/feature_auth/domain/repository/auth_repository.dart';

import '../../../di/di.dart';

class ListenToUserDataOnDB {
  final repo = locator.get<AuthRepository>();

  void call({required Function(MyUser? user) onGetUserData}) =>
      repo.listenToUserDataonDB(onGetUserData: onGetUserData);
}
