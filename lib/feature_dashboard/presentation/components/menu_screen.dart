import 'package:dentsu_quotes/core/presentation/components/avatar.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../feature_auth/presentation/controller/auth_controller.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late final AuthController _authController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.only(top: 80, bottom: 50, left: 12),
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  logo
          UnconstrainedBox(
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              width: 35,
              height: 35,
            ),
          ),
          const SizedBox(height: 48),
          //  profile pic
          Obx(() => Avatar(
              avatarUrl: _authController.user.value?.avatarUrl ?? '',
              size: const Size(100, 100))),
          const SizedBox(height: 24),
          //  navigation

          //  logout
          GestureDetector(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(24)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.logout_rounded, color: textWhite900),
                  const SizedBox(width: 12),
                  Text('Logout', style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleSmall!.fontSize,
                    fontWeight: Theme.of(context).textTheme.titleSmall!.fontWeight,
                    color: textWhite900,
                    decoration: TextDecoration.none
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
