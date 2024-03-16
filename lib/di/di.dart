import 'package:dentsu_quotes/di/core_di.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void invokeDI() {
  coreDI(locator: locator);
}
