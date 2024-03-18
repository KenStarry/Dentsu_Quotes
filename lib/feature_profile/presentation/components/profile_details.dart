import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../core/presentation/components/avatar.dart';
import '../../../core/presentation/controller/core_controller.dart';
import '../../../feature_auth/presentation/controller/auth_controller.dart';
import '../../../feature_dashboard/presentation/controller/dashboard_controller.dart';

class ProfileDetails extends StatefulWidget {
  const ProfileDetails({super.key});

  @override
  State<ProfileDetails> createState() => _ProfileDetailsState();
}

class _ProfileDetailsState extends State<ProfileDetails> {
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
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration:
          BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //  user name
          Obx(
            () => Text(_authController.user.value?.userName ?? '',
                style: Theme.of(context).textTheme.titleLarge),
          ),

          const SizedBox(height: 8),

          //  email
          Obx(
            () => Text(_authController.user.value?.email ?? '',
                style: Theme.of(context).textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
