import 'package:get/get.dart';

class DashboardController extends GetxController {
  final activeTabIndex = 0.obs;

  void setActiveTabIndex({required int index}) => activeTabIndex.value = index;
}
