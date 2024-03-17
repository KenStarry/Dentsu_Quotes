import 'dart:async';

import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../di/di.dart';
import '../../domain/model/my_user.dart';
import '../../domain/use_cases/auth_use_cases.dart';

class AuthController extends GetxController {
  final authUseCase = locator.get<AuthUseCases>();

  late final StreamSubscription<AuthState> _subscription;
  final currentEvent = AuthChangeEvent.signedOut.obs;
  final currentSession = Rxn<Session>();

  final user = Rxn<MyUser>();

  @override
  void onInit() {
    super.onInit();

    //  subscribe to auth
    _subscription = authSubscription(onAuthStateChanged: (authState) {
      currentEvent.value = authState.event;
      currentSession.value = authState.session;
    });
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }

  void setUser({required MyUser? user}) => this.user.value = user;

  /// Get User Data from DB
  void getUserDataFromDatabase(
          {required String uid,
          required Function(MyUser?) onGetUserData}) async =>
      await authUseCase.getUserDataFromDB
          .call(uid: uid, onGetUserData: onGetUserData);

  /// Sign Up
  Future<void> signUp(
          {required String email, required String password}) async =>
      await authUseCase.signUp.call(email: email, password: password);

  /// Sign In
  Future<void> signIn(
          {required String email,
          required String password,
          required bool keepLoggedIn}) async =>
      await authUseCase.signIn
          .call(email: email, password: password, keepLoggedIn: keepLoggedIn);

  /// Sign Out
  Future<void> signOut() async => await authUseCase.signOut();

  /// Get Auth User
  User? getAuthUser() => authUseCase.getAuthUser();

  /// Auth Subscription
  StreamSubscription<AuthState> authSubscription(
          {required Function(AuthState) onAuthStateChanged}) =>
      authUseCase.authSubscription.call(onAuthStateChanged: onAuthStateChanged);
}
