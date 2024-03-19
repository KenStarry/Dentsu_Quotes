import 'dart:async';

import 'package:dentsu_quotes/feature_auth/domain/model/my_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/domain/model/response_state.dart';

abstract class AuthRepository {
  /// Get User Data
  Future<void> getUserDataFromDatabase(
      {required String uid, required Function(MyUser?) onGetUserData});

  /// Listen to User Data
  void listenToUserDataonDB({required Function(MyUser? user) onGetUserData});

  /// Update User Data
  Future<void> updateUserDataOnDB(
      {required Map<String, dynamic> data,
        String? uid,
        required Function(ResponseState response) onResponse});

  /// User Sign Up
  Future<void> signUp({required String email, required String password});

  /// Sign In
  Future<void> signIn(
      {required String email,
      required String password,
      required bool keepLoggedIn,
        required Function(ResponseState response, String? errorMessage) onResponse});

  /// Sign Out
  Future<void> signOut();

  /// Get Auth User
  User? getAuthUser();

  /// Auth Subscription
  StreamSubscription<AuthState> authSubscription(
      {required Function(AuthState) onAuthStateChanged});
}
