import 'package:dentsu_quotes/feature_home/presentation/model/overview_card_model.dart';
import 'package:dentsu_quotes/theme/colors.dart';
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
      width: 250,
      height: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: BoxDecoration(
          color: Theme.of(context).primaryColorDark,
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          //  title
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.overviewCardModel.title,
                    style: Theme.of(context).textTheme.titleSmall),
                const Icon(Icons.more_horiz_rounded, color: textBlack100)
              ],
            ),
          )
          //  content
        ],
      ),
    );
  }
}
