import 'package:dentsu_quotes/feature_leads/presentation/components/profile_card_detail_card.dart';
import 'package:flutter/material.dart';

class ExtraDetailsContent extends StatelessWidget {
  final Map<String, dynamic> details;

  const ExtraDetailsContent({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: details.entries
            .map((entry) => ProfileCardDetailCard(
                title: entry.key, date: entry.value, alternativeStyle: true))
            .toList(),
      ),
    );
  }
}
