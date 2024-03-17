import 'package:dentsu_quotes/core/data/api/api.dart';
import 'package:dentsu_quotes/core/presentation/controller/core_controller.dart';
import 'package:dentsu_quotes/di/controller_di.dart';
import 'package:dentsu_quotes/di/di.dart';
import 'package:dentsu_quotes/feature_auth/presentation/screens/login_page.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/screens/dahboard_main.dart';
import 'package:dentsu_quotes/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(url: Api.url, anonKey: Api.anonKey);

  invokeControllers();
  invokeDI();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final CoreController _coreController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: MyTheme().lightTheme,
      darkTheme: MyTheme().lightTheme,
    );
  }
}
