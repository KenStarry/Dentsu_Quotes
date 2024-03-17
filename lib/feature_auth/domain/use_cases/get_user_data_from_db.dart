import 'package:dentsu_quotes/feature_auth/domain/model/my_user.dart';
import 'package:dentsu_quotes/feature_auth/domain/repository/auth_repository.dart';

import '../../../di/di.dart';

class GetUserDataFromDB {
  final repo = locator.get<AuthRepository>();

  Future<void> call(
          {required String uid,
          required Function(MyUser? user) onGetUserData}) async =>
      await repo.getUserDataFromDatabase(
          uid: uid, onGetUserData: onGetUserData);
}
