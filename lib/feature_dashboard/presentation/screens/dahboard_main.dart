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
          const Avatar(avatarUrl: '', size: Size(30, 30)),
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
    );
  }
}
