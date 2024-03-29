import 'dart:async';

import 'package:dentsu_quotes/core/domain/model/lead.dart';
import 'package:dentsu_quotes/core/presentation/controller/core_controller.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/model/quotes_data.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/domain/model/response_state.dart';
import '../../../di/di.dart';
import '../../domain/model/my_user.dart';
import '../../domain/use_cases/auth_use_cases.dart';

class AuthController extends GetxController {
  final authUseCase = locator.get<AuthUseCases>();
  final _coreController = Get.find<CoreController>();

  late final StreamSubscription<AuthState> _subscription;
  final currentEvent = AuthChangeEvent.signedOut.obs;
  final currentSession = Rxn<Session>();
  final isLoginLoading = false.obs;

  final user = Rxn<MyUser>();
  final quotesData = Rxn<TableDataSource>();
  final leadsData = Rxn<TableDataSource>();

  final filteredLeads = <Lead>[].obs;

  @override
  void onInit() {
    super.onInit();

    //  subscribe to auth
    _subscription = authSubscription(onAuthStateChanged: (authState) {
      currentEvent.value = authState.event;
      currentSession.value = authState.session;
    });

    ever(_coreController.hasInternet, (connected) {
      if (connected) {
        listenToUserDataonDB(onGetUserData: (user) {
          setUser(user: user);
        });
      }
    });
  }

  @override
  void onClose() {
    _subscription.cancel();
    super.onClose();
  }

  void filterLeads({required String filterString}) {
    final allLeads = [...user.value?.leads ?? <Lead>[]];

    filteredLeads.value = allLeads
        .where((lead) =>
            lead.fullName
                .replaceAll(' ', '')
                .toLowerCase()
                .startsWith(filterString.replaceAll(' ', '').toLowerCase()) ||
            lead.fullName
                .replaceAll(' ', '')
                .toLowerCase()
                .contains(filterString.replaceAll(' ', '').toLowerCase()))
        .toList();
  }

  void setIsLoginLoading({required bool isLoading}) =>
      isLoginLoading.value = isLoading;

  void setQuotesData({required TableDataSource quotesData}) =>
      this.quotesData.value = quotesData;

  void setLeadsData({required TableDataSource leadsData}) =>
      this.leadsData.value = leadsData;

  void setUser({required MyUser? user}) => this.user.value = user;

  /// Get User Data from DB
  void getUserDataFromDatabase(
          {required String uid,
          required Function(MyUser?) onGetUserData}) async =>
      await authUseCase.getUserDataFromDB
          .call(uid: uid, onGetUserData: onGetUserData);

  void listenToUserDataonDB({required Function(MyUser? user) onGetUserData}) =>
      authUseCase.listenToUserDataOnDB.call(onGetUserData: onGetUserData);

  Future<void> updateUserDataOnDB(
          {required Map<String, dynamic> data,
          String? uid,
          required Function(ResponseState response) onResponse}) async =>
      await authUseCase.updateUserDataOnDB
          .call(data: data, onResponse: onResponse);

  /// Sign Up
  Future<void> signUp(
          {required String email, required String password}) async =>
      await authUseCase.signUp.call(email: email, password: password);

  /// Sign In
  Future<void> signIn(
          {required String email,
          required String password,
          required bool keepLoggedIn,
          required Function(ResponseState response, String? errorMessage) onResponse}) async =>
      await authUseCase.signIn.call(
          email: email,
          password: password,
          keepLoggedIn: keepLoggedIn,
          onResponse: onResponse);

  /// Sign Out
  Future<void> signOut() async => await authUseCase.signOut();

  /// Get Auth User
  User? getAuthUser() => authUseCase.getAuthUser();

  /// Auth Subscription
  StreamSubscription<AuthState> authSubscription(
          {required Function(AuthState) onAuthStateChanged}) =>
      authUseCase.authSubscription.call(onAuthStateChanged: onAuthStateChanged);
}
