import 'package:dentsu_quotes/core/presentation/components/avatar.dart';
import 'package:dentsu_quotes/core/presentation/controller/core_controller.dart';
import 'package:dentsu_quotes/feature_auth/presentation/controller/auth_controller.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/components/bottom_bar_item.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/components/menu_screen.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/screens/no_internet_screen.dart';
import 'package:dentsu_quotes/feature_leads/presentation/screens/leads_page.dart';
import 'package:dentsu_quotes/feature_leads/presentation/screens/view_lead_page.dart';
import 'package:dentsu_quotes/feature_profile/presentation/screens/profile_page.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/screens/quotes_page.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/screens/view_quote_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../../../feature_home/presentation/screens/home_page.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  late final CoreController _coreController;
  late final AuthController _authController;
  late final DashboardController _dashboardController;

  @override
  void initState() {
    super.initState();

    _coreController = Get.find<CoreController>();
    _authController = Get.find<AuthController>();
    _dashboardController = Get.find<DashboardController>();

    _authController.listenToUserDataonDB(onGetUserData: (user) {
      _authController.setUser(user: user);
    });
  }

  @override
  Widget build(BuildContext context) {
    var screens = <Widget>[
      Obx(() => _dashboardController.viewLeadActive.value
          ? ViewLeadPage(
              lead: _authController
                  .user.value!.leads[_dashboardController.viewLeadIndex.value],
            )
          : const HomePage()),
      Obx(() => _dashboardController.viewLeadActive.value
          ? ViewLeadPage(
              lead: _authController
                  .user.value!.leads[_dashboardController.viewLeadIndex.value],
            )
          : const LeadsPage()),
      Obx(() => _dashboardController.viewQuoteActive.value
          ? ViewQuotePage(
              isNewQuote: _dashboardController.newQuoteActive.value,
            )
          : const QuotesPage()),
      const ProfilePage()
    ];
    const bottomBarItemAssets = <String>[
      'assets/images/home.svg',
      'assets/images/leads.svg',
      'assets/images/quotes.svg',
      'assets/images/profile.svg',
    ];

    return ZoomDrawer(
        controller: _dashboardController.zoomController,
        style: DrawerStyle.defaultStyle,
        menuBackgroundColor: Theme.of(context).primaryColor,
        mainScreenScale: 0.2,
        slideWidth: 250,
        mainScreenTapClose: true,
        showShadow: true,
        borderRadius: 24,
        menuScreen: const MenuScreen(),
        mainScreen: Obx(
          () => Scaffold(
            appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Theme.of(context).primaryColor,
                  statusBarBrightness: Brightness.light,
                  systemNavigationBarColor: Theme.of(context).primaryColorDark,
                  systemNavigationBarIconBrightness: Brightness.dark),
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0,
              leadingWidth: 88,
              toolbarHeight: 70,
              leading: UnconstrainedBox(
                child: SvgPicture.asset(
                  'assets/images/logo.svg',
                  width: 35,
                  height: 35,
                ),
              ),
              actions: [
                Obx(
                  () => AnimatedContainer(
                    duration: const Duration(milliseconds: 350),
                    width:
                        _dashboardController.searchModeEnabled.value ? 200 : 0,
                    height: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ),
                //  profile picture
                Obx(
                  () => Visibility(
                    visible: !_dashboardController.searchModeEnabled.value,
                    child: SizedBox(
                        width: 30,
                        height: 30,
                        child: Stack(
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Obx(() => Avatar(
                                    avatarUrl:
                                        _authController.user.value?.avatarUrl ??
                                            '',
                                    size: const Size(30, 30)))),

                            //  live status checker
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Obx(
                                () => Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _coreController.hasInternet.value
                                          ? Colors.greenAccent
                                          : Colors.redAccent),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                    onPressed: () {
                      _dashboardController.toggleSearchModeEnabled();
                    },
                    icon: Obx(
                      () => Icon(
                          _dashboardController.searchModeEnabled.value
                              ? Icons.close_rounded
                              : Icons.search_rounded,
                          color: Theme.of(context).primaryColorDark),
                    )),
                Obx(
                  () => Visibility(
                    visible: !_dashboardController.searchModeEnabled.value,
                    child: IconButton(
                        onPressed: () {
                          //  open zoom drawer
                          _dashboardController.toggleDrawer();
                        },
                        icon: SvgPicture.asset(
                          'assets/images/menu.svg',
                          width: 24,
                          height: 24,
                          colorFilter: ColorFilter.mode(
                              Theme.of(context).primaryColorDark,
                              BlendMode.srcIn),
                        )),
                  ),
                ),
              ],
            ),
            bottomNavigationBar: _coreController.hasInternet.value
                ? BottomAppBar(
                    color: Colors.transparent,
                    surfaceTintColor: Colors.transparent,
                    height: 70,
                    padding: EdgeInsets.zero,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColorDark,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: bottomBarItemAssets
                            .map((asset) => Obx(
                                  () => BottomBarItem(
                                      asset: asset,
                                      isActive: _dashboardController
                                              .activeTabIndex.value ==
                                          bottomBarItemAssets.indexOf(asset),
                                      onTap: () {
                                        _dashboardController.setActiveTabIndex(
                                            index: bottomBarItemAssets
                                                .indexOf(asset));
                                      }),
                                ))
                            .toList(),
                      ),
                    ),
                  )
                : null,
            body: _coreController.hasInternet.value
                ? Obx(
                    () => IndexedStack(
                      index: _dashboardController.activeTabIndex.value,
                      children: screens,
                    ),
                  )
                : NoInternetScreen(),
          ),
        ));
  }
}
