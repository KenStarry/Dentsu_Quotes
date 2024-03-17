import 'dart:async';

import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../di/di.dart';
import '../repository/auth_repository.dart';

class AuthSubscription {
  final repo = locator.get<AuthRepository>();

  StreamSubscription<AuthState> call(
          {required Function(AuthState) onAuthStateChanged}) =>
      repo.authSubscription(onAuthStateChanged: onAuthStateChanged);
}
