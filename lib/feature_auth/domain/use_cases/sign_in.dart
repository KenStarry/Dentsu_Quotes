
import '../../../core/domain/model/response_state.dart';
import '../../../di/di.dart';
import '../repository/auth_repository.dart';

class SignIn {
  final repo = locator.get<AuthRepository>();

  Future<void> call({required String email, required String password, required bool keepLoggedIn,
    required Function(ResponseState response, String? errorMessage) onResponse}) async =>
      repo.signIn(email: email, password: password, keepLoggedIn: keepLoggedIn, onResponse: onResponse);
}
