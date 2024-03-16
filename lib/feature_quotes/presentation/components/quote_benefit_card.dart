import 'package:flutter/material.dart';

class QuoteBenefitCard extends StatelessWidget {
  final String title;
  final bool isSelected;
  final Function(bool value) onChanged;

  const QuoteBenefitCard(
      {super.key,
      required this.title,
      this.isSelected = false,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.bodyMedium),
          Container(
            constraints: const BoxConstraints(maxHeight: 8),
            child: Transform.scale(
              scale: 0.7,
              child: Switch(
                  value: isSelected,
                  activeColor: Theme.of(context).primaryColorDark,
                  inactiveTrackColor: const Color(0xff444444).withOpacity(0.4),
                  inactiveThumbColor: Theme.of(context).primaryColorDark,
                  activeTrackColor: Theme.of(context).primaryColorLight,
                  trackOutlineColor: MaterialStateProperty.all(Colors.transparent),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  onChanged: onChanged),
            ),
          )
        ],
      ),
    );
  }
}
