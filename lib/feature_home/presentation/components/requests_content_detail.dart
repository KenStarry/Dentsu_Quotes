import 'package:flutter/material.dart';

class RequestsContentDetail extends StatelessWidget {
  final Color iconColor;
  final String detailText;

  const RequestsContentDetail(
      {super.key,
      required this.iconColor,
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

        const SizedBox(width: 4),

        Text(detailText, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
