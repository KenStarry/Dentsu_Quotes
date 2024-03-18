import 'package:dentsu_quotes/core/presentation/components/avatar.dart';
import 'package:dentsu_quotes/core/presentation/controller/core_controller.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/controller/dashboard_controller.dart';
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
  late final CoreController _coreController;
  late final DashboardController _dashboardController;

  @override
  void initState() {
    super.initState();

    _authController = Get.find<AuthController>();
    _coreController = Get.find<CoreController>();
    _dashboardController = Get.find<DashboardController>();
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
              GestureDetector(
                onTap: (){
                  _dashboardController.setActiveTabIndex(
                      index: 3);
                  //  toggle drawer
                  _dashboardController.toggleDrawer();
                },
                child: SizedBox(
                    width: 100,
                    height: 100,
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.center,
                            child: Obx(() => Avatar(
                                avatarUrl:
                                _authController.user.value?.avatarUrl ?? '',
                                size: const Size(100, 100)))),

                        //  live status checker
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Obx(
                                () => Container(
                              width: 10,
                              height: 10,
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _coreController.hasInternet.value
                                      ? Colors.greenAccent
                                      : Colors.redAccent,
                              border: Border.all(color: Theme.of(context).primaryColor, width: 4, strokeAlign: BorderSide.strokeAlignOutside)),
                            ),
                          ),
                        )
                      ],
                    )),
              ),
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
                      onTap: () {
                        //  navigate to leads
                        _dashboardController.setActiveTabIndex(
                            index: 1);
                        //  toggle drawer
                        _dashboardController.toggleDrawer();
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: const BoxDecoration(color: Colors.transparent),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              'assets/images/leads.svg',
                              width: 20,
                              height: 20,
                              colorFilter: const ColorFilter.mode(
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
                      onTap: () {
                        _dashboardController.setActiveTabIndex(
                            index: 2);
                        //  toggle drawer
                        _dashboardController.toggleDrawer();
                      },
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
                              colorFilter: const ColorFilter.mode(
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
                  const Icon(Icons.logout_rounded, color: textWhite900),
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
