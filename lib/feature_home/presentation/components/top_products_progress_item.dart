import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class TopProductsProgressItem extends StatelessWidget {
  final String title;
  final Color color;
  final String count;
  final double percent;

  const TopProductsProgressItem(
      {super.key,
      required this.title,
      required this.color,
      required this.count,
      required this.percent});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // title
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                    fontWeight:
                        Theme.of(context).textTheme.titleSmall!.fontWeight,
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    color: Theme.of(context).textTheme.bodyMedium!.color)),
            Text(count,
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.titleSmall!.fontWeight,
                    color: color))
          ],
        ),
        const SizedBox(height: 8),
        //  progress bar
        Align(
          alignment: Alignment.centerLeft,
          child: LinearPercentIndicator(
            width: 230,
            lineHeight: 8,
            padding: EdgeInsets.zero,
            progressColor: color,
            percent: percent,
            barRadius: Radius.circular(100),
          ),
        )
      ],
    );
  }
}
