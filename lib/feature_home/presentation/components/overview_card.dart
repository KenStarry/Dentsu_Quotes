import 'package:dentsu_quotes/feature_home/presentation/model/overview_card_model.dart';
import 'package:flutter/material.dart';

class OverviewCard extends StatefulWidget {
  final OverviewCardModel overviewCardModel;

  const OverviewCard({super.key, required this.overviewCardModel});

  @override
  State<OverviewCard> createState() => _OverviewCardState();
}

class _OverviewCardState extends State<OverviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 250,
      color: Colors.blue,
    );
  }
}
