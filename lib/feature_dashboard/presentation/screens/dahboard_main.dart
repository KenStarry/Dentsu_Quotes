import 'package:dentsu_quotes/core/presentation/components/avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
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
        color: Theme.of(context).primaryColorDark,
        surfaceTintColor: Theme.of(context).primaryColorDark,
        height: 70,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Row(
            children: [
              //  home
            ],
          ),
        ),
      ),
    );
  }
}
