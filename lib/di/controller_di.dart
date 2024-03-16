import 'package:dentsu_quotes/core/presentation/controller/core_controller.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:get/get.dart';

void invokeControllers() {
  Get.lazyPut(() => CoreController(), fenix: true);
  Get.lazyPut(() => DashboardController(), fenix: true);
}
