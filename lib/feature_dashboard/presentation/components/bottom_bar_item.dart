import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBarItem extends StatelessWidget {
  final String asset;
  final bool isActive;
  final VoidCallback onTap;

  const BottomBarItem(
      {super.key,
      required this.asset,
      this.isActive = false,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: SvgPicture.asset(
          asset,
          width: 20,
          height: 20,
          colorFilter: ColorFilter.mode(
              isActive
                  ? Theme.of(context).primaryColor
                  : textBlack100,
              BlendMode.srcIn),
        ),
      ),
    );
  }
}
