import 'package:dentsu_quotes/core/domain/model/quote.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../../di/di.dart';
import '../../domain/use_cases/core_use_cases.dart';

class CoreController extends GetxController {
  final useCase = locator.get<CoreUseCases>();

  final newQuote = Quote().obs;

  final hasInternet = false.obs;

  @override
  void onInit() {
    super.onInit();

    //  listen to an active internet connection
    listenToInternetStatus(onStatusChanged: (internetStatus) {
      hasInternet.value = internetStatus == InternetConnectionStatus.connected;
    });

    ever(newQuote, (quote) {
      print('--------------------${quote.toString()}');
    });
  }

  void listenToInternetStatus(
          {required Function(InternetConnectionStatus status)
              onStatusChanged}) =>
      useCase.listenToInternetStatus.call(onStatusChanged: onStatusChanged);

  void updateQuoteValue({required Quote updatedQuote}) {
    newQuote.value = updatedQuote;
  }
}
