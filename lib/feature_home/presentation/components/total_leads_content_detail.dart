import 'package:flutter/material.dart';

class TotalLeadsContentDetail extends StatelessWidget {
  final Color iconColor;
  final String detailText;
  final String detailCount;

  const TotalLeadsContentDetail(
      {super.key,
      required this.iconColor,
      required this.detailCount,
      required this.detailText});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // icon
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(shape: BoxShape.circle, color: iconColor),
        ),

        //  details
        Text.rich(TextSpan(children: [
          TextSpan(
              text: detailText, style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: detailCount,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
                  fontWeight:
                      Theme.of(context).textTheme.titleSmall!.fontWeight,
                  color: Theme.of(context).textTheme.bodySmall!.color)),
        ]))
      ],
    );
  }
}
