import '../../../di/di.dart';
import '../repository/auth_repository.dart';

class SignUp {
  final repo = locator.get<AuthRepository>();

  Future<void> call({required String email, required String password}) async =>
      await repo.signUp(email: email, password: password);
}
