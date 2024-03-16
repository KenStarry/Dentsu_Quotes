import 'package:get/get.dart';

class DashboardController extends GetxController {
  final activeTabIndex = 0.obs;

  final viewQuoteActive = false.obs;
  final viewLeadActive = false.obs;

  void setActiveTabIndex({required int index}) => activeTabIndex.value = index;

  void setViewQuoteActive({required bool active}) =>
      viewQuoteActive.value = active;

  void setViewLeadActive({required bool active}) =>
      viewLeadActive.value = active;
}
