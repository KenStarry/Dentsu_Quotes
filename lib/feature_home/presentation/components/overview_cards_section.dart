import 'package:dentsu_quotes/feature_home/presentation/components/leads_content.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/overview_card.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/requests_content.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/requests_content_detail.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/top_products_content.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/total_leads_content.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/total_leads_content_detail.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';

import '../model/overview_card_model.dart';

class OverviewCardsSection extends StatefulWidget {
  const OverviewCardsSection({super.key});

  @override
  State<OverviewCardsSection> createState() => _OverviewCardsSectionState();
}

class _OverviewCardsSectionState extends State<OverviewCardsSection> {
  late final List<OverviewCardModel> overviewCards;

  @override
  void initState() {
    super.initState();

    overviewCards = <OverviewCardModel>[
      OverviewCardModel(
          title: 'Total Leads',
          chart: const TotalLeadsContent(),
          details: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalLeadsContentDetail(
                  iconColor: accent,
                  detailText: ' Contacted ',
                  detailCount: '1.7k'),
              TotalLeadsContentDetail(
                  iconColor: Color(0xffFFE5D3),
                  detailText: ' Total Leads ',
                  detailCount: '2.73k'),
            ],
          ),
          onTap: () {}),
      OverviewCardModel(
          title: 'Leads',
          chart: const LeadsContent(),
          details: null,
          onTap: () {}),
      OverviewCardModel(
          title: 'Requests',
          chart: const RequestsContent(),
          details: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RequestsContentDetail(iconColor: accent, detailText: 'Accounts'),
              RequestsContentDetail(iconColor: myGreen, detailText: 'Insurance'),
              RequestsContentDetail(iconColor: myBlue, detailText: 'Credit'),
            ],
          ),
          onTap: () {}),
      OverviewCardModel(
          title: 'Top Products',
          chart: const TopProductsContent(),
          onTap: () {}),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.transparent,
          child: ListView.separated(
              itemBuilder: (context, index) =>
                  OverviewCard(overviewCardModel: overviewCards[index]),
              separatorBuilder: (context, index) => const SizedBox(width: 16),
              itemCount: overviewCards.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal)),
    );
  }
}
