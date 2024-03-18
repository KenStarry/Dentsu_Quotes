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
      padding: const EdgeInsets.only(top: 60, bottom: 50, left: 12),
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //  logo
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UnconstrainedBox(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 35,
                  height: 35,
                ),
              ),
              const SizedBox(height: 16),
              Text('Dentsu', style: TextStyle(
                  fontSize: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .fontSize,
                  fontWeight: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .fontWeight,
                  color: textWhite900,
                  decoration: TextDecoration.none))
            ],
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  profile pic
              Obx(() => Avatar(
                  avatarUrl: _authController.user.value?.avatarUrl ?? '',
                  size: const Size(100, 100))),
              const SizedBox(height: 24),
              //  navigation
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //  Leads
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/images/leads.svg',
                              width: 20,
                              height: 20,
                              colorFilter: ColorFilter.mode(
                                  textWhite900, BlendMode.srcIn),
                            ),
                            const SizedBox(width: 12),
                            Text('Leads',
                                style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .fontSize,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .fontWeight,
                                    color: textWhite900,
                                    decoration: TextDecoration.none))
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 24),

                    //  Quotes
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/images/quotes.svg',
                              width: 20,
                              height: 20,
                              colorFilter: ColorFilter.mode(
                                  textWhite900, BlendMode.srcIn),
                            ),
                            const SizedBox(width: 12),
                            Text('Quotes',
                                style: TextStyle(
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .fontSize,
                                    fontWeight: Theme.of(context)
                                        .textTheme
                                        .titleSmall!
                                        .fontWeight,
                                    color: textWhite900,
                                    decoration: TextDecoration.none))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //  logout
          GestureDetector(
            onTap: () async {
              await _authController.signOut();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColorLight,
                  borderRadius: BorderRadius.circular(24)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout_rounded, color: textWhite900),
                  const SizedBox(width: 12),
                  Text('Logout',
                      style: TextStyle(
                          fontSize:
                              Theme.of(context).textTheme.bodyLarge!.fontSize,
                          fontWeight: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .fontWeight,
                          color: textWhite900,
                          decoration: TextDecoration.none))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
