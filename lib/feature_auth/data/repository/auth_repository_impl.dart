import 'dart:async';

import 'package:dentsu_quotes/feature_auth/domain/model/my_user.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../di/di.dart';
import '../../domain/repository/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final supabase = locator.get<SupabaseClient>();

  @override
  Future<void> getUserDataFromDatabase(
      {required String uid,
      required Function(MyUser? user) onGetUserData}) async {
    try {
      final userData = await supabase
          .from('users')
          .select()
          .eq('id', supabase.auth.currentUser?.id ?? '')
          .single();

      onGetUserData(MyUser.fromJson(userData));
    } catch (error) {
      throw Exception(error);
    }
  }

  /// Sign Up
  @override
  Future<void> signUp({required String email, required String password}) async {
    try {
      await supabase.auth.signUp(email: email, password: password);
    } on SupabaseRealtimeError catch (error) {
      throw Exception(error.message);
    }
  }

  /// Sign In
  @override
  Future<void> signIn(
      {required String email,
      required String password,
      required bool keepLoggedIn}) async {
    try {
      final response = await supabase.auth
          .signInWithPassword(email: email, password: password);

      if (response.user != null) {
        final sharedPrefs = await SharedPreferences.getInstance();
        await sharedPrefs.setBool('keep_logged_in', keepLoggedIn);

        print("LOGGED IN SUCCESSFULLY!");
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  /// Sign Out
  @override
  Future<void> signOut() async {
    try {
      await supabase.auth.signOut(scope: SignOutScope.local);
    } catch (error) {
      throw Exception(error);
    }
  }

  /// Auth User
  @override
  User? getAuthUser() => supabase.auth.currentUser;

  /// Auth Subscription
  @override
  StreamSubscription<AuthState> authSubscription(
          {required Function(AuthState) onAuthStateChanged}) =>
      supabase.auth.onAuthStateChange.listen(onAuthStateChanged);
}
