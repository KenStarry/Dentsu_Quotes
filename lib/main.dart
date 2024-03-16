import 'package:dentsu_quotes/di/controller_di.dart';
import 'package:dentsu_quotes/di/di.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/screens/dahboard_main.dart';
import 'package:dentsu_quotes/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  invokeControllers();
  invokeDI();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const DashboardMain(),
      debugShowCheckedModeBanner: false,
      theme: MyTheme().lightTheme,
      darkTheme: MyTheme().lightTheme,
    );
  }
}
