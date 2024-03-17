import 'package:dentsu_quotes/feature_auth/domain/model/my_user.dart';
import 'package:dentsu_quotes/feature_auth/domain/repository/auth_repository.dart';

import '../../../core/domain/model/response_state.dart';
import '../../../di/di.dart';

class UpdateUserDataOnDB {
  final repo = locator.get<AuthRepository>();

  Future<void> call(
          {required Map<String, dynamic> data,
          String? uid,
          required Function(ResponseState response) onResponse}) async =>
      await repo.updateUserDataOnDB(data: data, onResponse: onResponse);
}
