import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class CoreRepository {
  /// Listen to Internet Status
  void listenToInternetStatus(
      {required Function(InternetConnectionStatus status) onStatusChanged});
}