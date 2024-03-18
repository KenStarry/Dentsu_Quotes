import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/presentation/components/avatar.dart';
import '../../../core/presentation/controller/core_controller.dart';
import '../../../feature_auth/presentation/controller/auth_controller.dart';
import '../../../feature_dashboard/presentation/controller/dashboard_controller.dart';

class ProfileCard extends StatefulWidget {
  const ProfileCard({super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  late final CoreController _coreController;
  late final AuthController _authController;
  late final DashboardController _dashboardController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
    _authController = Get.find<AuthController>();
    _dashboardController = Get.find<DashboardController>();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: Stack(
        children: [
          //  background purple clipper
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              width: double.infinity,
              height: 100,
              color: Theme.of(context).primaryColor,
            ),
          ),

          //  avatar
          Align(
              alignment: Alignment.bottomCenter,
              child: Obx(() => Avatar(
                    avatarUrl: _authController.user.value?.avatarUrl ?? '',
                    size: const Size(100, 100),
                  )))
        ],
      ),
    );
  }
}
