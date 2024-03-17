import 'package:get/get.dart';

class DashboardController extends GetxController {
  final activeTabIndex = 0.obs;

  final viewQuoteActive = false.obs;
  final newQuoteActive = false.obs;
  final viewLeadActive = false.obs;

  void setActiveTabIndex({required int index}) => activeTabIndex.value = index;

  void setViewQuoteActive({required bool active, bool isNewQuote = false}) {
    viewQuoteActive.value = active;
    newQuoteActive.value = isNewQuote;
  }

  void setViewLeadActive({required bool active}) =>
      viewLeadActive.value = active;
}
