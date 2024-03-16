import 'package:dentsu_quotes/feature_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:get/get.dart';

void invokeControllers() {
  Get.lazyPut(() => DashboardController(), fenix: true);
}
