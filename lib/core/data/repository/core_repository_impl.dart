import 'package:dentsu_quotes/core/domain/repository/core_repository.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class CoreRepositoryImpl extends CoreRepository {

  /// Listen to Internet connection status
  @override
  void listenToInternetStatus(
          {required Function(InternetConnectionStatus status)
              onStatusChanged}) =>
      InternetConnectionChecker().onStatusChange.listen(onStatusChanged);
}
