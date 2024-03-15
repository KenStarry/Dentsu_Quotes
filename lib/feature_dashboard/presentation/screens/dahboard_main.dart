import 'package:dentsu_quotes/core/presentation/components/avatar.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/components/bottom_bar_item.dart';
import 'package:dentsu_quotes/feature_dashboard/presentation/controller/dashboard_controller.dart';
import 'package:dentsu_quotes/feature_leads/presentation/screens/leads_page.dart';
import 'package:dentsu_quotes/feature_profile/presentation/screens/profile_page.dart';
import 'package:dentsu_quotes/feature_quotes/presentation/screens/quotes_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../feature_home/presentation/screens/home_page.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  late List<String> bottomBarItemAssets;
  late List<Widget> screens;

  late final DashboardController _dashboardController;

  @override
  void initState() {
    super.initState();

    screens = const <Widget>[
      HomePage(),
      LeadsPage(),
      QuotesPage(),
      ProfilePage()
    ];
    bottomBarItemAssets = <String>[
      'assets/images/home.svg',
      'assets/images/leads.svg',
      'assets/images/quotes.svg',
      'assets/images/profile.svg',
    ];

    _dashboardController = Get.find<DashboardController>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        leadingWidth: 80,
        toolbarHeight: 70,
        leading: UnconstrainedBox(
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: 35,
            height: 35,
          ),
        ),
        actions: [
          //  profile picture
          SizedBox(
              width: 30,
              height: 30,
              child: Stack(
                children: [
                  const Align(
                      alignment: Alignment.center,
                      child: Avatar(avatarUrl: '', size: Size(30, 30))),

                  //  live status checker
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 8,
                      height: 8,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                    ),
                  )
                ],
              )),
          const SizedBox(width: 8),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_rounded,
                  color: Theme.of(context).primaryColorDark)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/menu.svg',
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                    Theme.of(context).primaryColorDark, BlendMode.srcIn),
              )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
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
                  topRight: Radius.circular(20), topLeft: Radius.circular(20))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: bottomBarItemAssets
                .map((asset) => Obx(
                      () => BottomBarItem(
                          asset: asset,
                          isActive: _dashboardController.activeTabIndex.value ==
                              bottomBarItemAssets.indexOf(asset),
                          onTap: () {
                            _dashboardController.setActiveTabIndex(
                                index: bottomBarItemAssets.indexOf(asset));
                          }),
                    ))
                .toList(),
          ),
        ),
      ),
      body: Obx(
        () => IndexedStack(
          index: _dashboardController.activeTabIndex.value,
          children: screens,
        ),
      ),
    );
  }
}
