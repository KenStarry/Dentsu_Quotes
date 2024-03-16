import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../di/di.dart';
import '../repository/core_repository.dart';

class ListenToInternetStatus {
  final repo = locator.get<CoreRepository>();

  void call(
          {required Function(InternetConnectionStatus status)
              onStatusChanged}) =>
      repo.listenToInternetStatus(onStatusChanged: onStatusChanged);
}
