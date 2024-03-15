import 'package:dentsu_quotes/feature_home/presentation/components/total_leads_content_detail.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TopProductsContent extends StatelessWidget {
  const TopProductsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          Text(
              "Every large design company, whether it's a milti-national branding.",
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.clip),

          //  progress bars
          Expanded(child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            ],
          ))
        ],
      ),
    );
  }
}
