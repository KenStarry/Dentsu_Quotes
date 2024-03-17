import 'package:dentsu_quotes/core/data/api/api.dart';
import 'package:dentsu_quotes/core/presentation/controller/core_controller.dart';
import 'package:dentsu_quotes/di/controller_di.dart';
import 'package:dentsu_quotes/di/di.dart';
import 'package:dentsu_quotes/feature_auth/presentation/controller/auth_controller.dart';
import 'package:dentsu_quotes/feature_auth/presentation/screens/login_page.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/screens/dahboard_main.dart';
import 'package:dentsu_quotes/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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

class _MyAppState extends State<MyApp> with WidgetsBindingObserver{
  late final CoreController _coreController;
  late final AuthController _authController;

  @override
  void initState() {
    //  monitor lifecycle changes
    WidgetsBinding.instance.addObserver(this);
    super.initState();

    _coreController = Get.find<CoreController>();
    _authController = Get.find<AuthController>();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    if (state == AppLifecycleState.paused) {
      final prefs = await SharedPreferences.getInstance();
      final keepLoggedIn = prefs.getBool('keep_logged_in');

      if (!keepLoggedIn!) {
        //  sign out the user
        await _authController.signOut();
      }
    }
  }

  @override
  void dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        home: _authController.currentSession.value != null
            ? const DashboardMain()
            : const LoginPage(),
        debugShowCheckedModeBanner: false,
        theme: MyTheme().lightTheme,
        darkTheme: MyTheme().lightTheme,
      ),
    );
  }
}
