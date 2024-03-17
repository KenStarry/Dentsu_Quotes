import '../../../di/di.dart';
import '../repository/auth_repository.dart';

class SignOut {
  final repo = locator.get<AuthRepository>();

  Future<void> call() async => repo.signOut();
}
