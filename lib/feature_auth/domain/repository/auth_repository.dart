import 'dart:async';

import 'package:dentsu_quotes/feature_auth/domain/model/my_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRepository {

  /// Get User Data
  Future<void> getUserDataFromDatabase(
      {required String uid, required Function(MyUser?) onGetUserData});

  /// User Sign Up
  Future<void> signUp({required String email, required String password});

  /// Sign In
  Future<void> signIn({required String email, required String password, required bool keepLoggedIn});

  /// Sign Out
  Future<void> signOut();

  /// Get Auth User
  User? getAuthUser();

  /// Auth Subscription
  StreamSubscription<AuthState> authSubscription(
      {required Function(AuthState) onAuthStateChanged});
}
