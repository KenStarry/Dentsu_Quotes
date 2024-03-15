import 'package:dentsu_quotes/feature_home/presentation/components/overview_card.dart';
import 'package:dentsu_quotes/feature_home/presentation/components/total_leads_content.dart';
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
          title: 'Total Leads', content: TotalLeadsContent(), onTap: () {}),
      OverviewCardModel(
          title: 'Leads', content: TotalLeadsContent(), onTap: () {}),
      OverviewCardModel(
          title: 'Requests', content: TotalLeadsContent(), onTap: () {}),
      OverviewCardModel(
          title: 'Top Products', content: TotalLeadsContent(), onTap: () {}),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          width: double.infinity,
          height: 270,
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
