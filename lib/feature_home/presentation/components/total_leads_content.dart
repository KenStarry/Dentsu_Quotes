import 'package:dentsu_quotes/feature_home/presentation/components/total_leads_content_detail.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TotalLeadsContent extends StatelessWidget {
  const TotalLeadsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: CircularPercentIndicator(
          radius: 80,
          animation: true,
          percent: 0.75,
          circularStrokeCap: CircularStrokeCap.round,
          progressColor: Theme.of(context).primaryColor,
          backgroundColor: const Color(0xffFFE5D3),
          lineWidth: 12,
          center: Container(
            width: double.infinity,
            height: double.infinity,
            margin: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text('47%',
                  style: TextStyle(
                      fontSize:
                          Theme.of(context).textTheme.titleMedium!.fontSize,
                      fontWeight:
                          Theme.of(context).textTheme.titleMedium!.fontWeight,
                      color: textWhite900)),
            ),
          ),
        ),
      ),
    );
  }
}
