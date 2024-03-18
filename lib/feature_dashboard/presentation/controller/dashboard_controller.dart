import 'package:flutter/cupertino.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final activeTabIndex = 0.obs;

  final viewQuoteActive = false.obs;
  final viewQuoteIndex = 0.obs;
  final newQuoteActive = false.obs;
  final viewLeadActive = false.obs;
  final viewLeadIndex = 0.obs;

  final zoomController = ZoomDrawerController();

  void toggleDrawer() async {
    zoomController.toggle?.call();
    update();
  }

  void setActiveTabIndex({required int index}) => activeTabIndex.value = index;

  void setViewQuoteActive(
      {required bool active, bool isNewQuote = false, int viewQuoteIndex = 0}) {
    viewQuoteActive.value = active;
    newQuoteActive.value = isNewQuote;
    this.viewQuoteIndex.value = viewQuoteIndex;
  }

  void setViewLeadActive({required bool active, int index = 0}) {
    viewLeadActive.value = active;
    viewLeadIndex.value = index;
  }
}
