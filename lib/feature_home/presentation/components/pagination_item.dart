import 'package:flutter/material.dart';

import '../../../theme/colors.dart';

class PaginationItem extends StatelessWidget {
  final Widget center;
  final bool active;
  final bool showBorder;
  final VoidCallback? onTap;

  const PaginationItem(
      {super.key,
      required this.center,
      this.active = false,
      this.showBorder = true,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36,
        height: 33,
        decoration: BoxDecoration(
          color: active
              ? Theme.of(context).primaryColorLight
              : Theme.of(context).primaryColorDark,
          border: showBorder
              ? Border.all(color: textBlack100.withOpacity(0.3), width: 1)
              : null,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(100),
              topLeft: Radius.circular(100),
              bottomLeft: Radius.circular(100),
              bottomRight: Radius.circular(100)),
        ),
        child: Center(
          child: center,
        ),
      ),
    );
  }
}
