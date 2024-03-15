import 'package:dentsu_quotes/feature_home/presentation/components/top_products_progress_item.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/total_leads_content_detail.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TopProductsContent extends StatelessWidget {
  const TopProductsContent({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> progressItems = <Widget>[
      TopProductsProgressItem(
          title: 'Mortgage', color: accent, count: '65,376', percent: 0.8),
      TopProductsProgressItem(
          title: 'One Xtra Account',
          color: Color(0xff4339f2),
          count: '12,109',
          percent: 0.55),
      TopProductsProgressItem(
          title: 'Motor Insurance',
          color: Color(0xff02a0fc),
          count: '132,645',
          percent: 0.9),
      TopProductsProgressItem(
          title: 'Credit Cards',
          color: Color(0xff59bfa3),
          count: '100,429',
          percent: 0.7),
    ];

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

          const SizedBox(height: 8),

          //  progress bars
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: progressItems,
          ))
        ],
      ),
    );
  }
}
