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
        leading: UnconstrainedBox(
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: 40,
            height: 40,
          ),
        ),
        actions: [
          //  profile picture
        ],
      ),
    );
  }
}
