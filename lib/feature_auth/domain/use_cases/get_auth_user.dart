import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../di/di.dart';
import '../repository/auth_repository.dart';

class GetAuthUser {
  final repo = locator.get<AuthRepository>();

  User? call() => repo.getAuthUser();
}
