import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfileCardDetailCard extends StatelessWidget {
  final String title;
  final String date;
  final bool alternativeStyle;

  const ProfileCardDetailCard(
      {super.key,
      required this.title,
      required this.date,
      this.alternativeStyle = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: alternativeStyle ? 0 : 12, vertical: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: alternativeStyle
              ? null
              : Border.all(color: Colors.grey.withOpacity(0.5), width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                  fontWeight: FontWeight.w400,
                  color: alternativeStyle ? textBlack500 : textBlack200)),
          const SizedBox(height: 8),
          Text(
            date,
            style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyLarge!.fontSize,
                fontWeight: Theme.of(context).textTheme.titleSmall!.fontWeight,
                color: Theme.of(context).textTheme.titleSmall!.color),
          )
        ],
      ),
    );
  }
}
