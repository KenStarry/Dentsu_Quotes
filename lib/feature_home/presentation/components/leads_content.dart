import 'package:dentsu_quotes/feature_home/presentation/components/total_leads_content_detail.dart';
import 'package:dentsu_quotes/theme/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LeadsContent extends StatefulWidget {
  const LeadsContent({super.key});

  @override
  State<LeadsContent> createState() => _LeadsContentState();
}

class _LeadsContentState extends State<LeadsContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.transparent,
      child: Column(
        children: [
          const SizedBox(height: 12),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TotalLeadsContentDetail(
                  iconColor: accentLight,
                  detailCount: '',
                  detailText: 'Accounts'),
              TotalLeadsContentDetail(
                  iconColor: myBlue, detailCount: '', detailText: 'Credit'),
              TotalLeadsContentDetail(
                  iconColor: myGreen, detailCount: '', detailText: 'Insurance'),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: LineChart(LineChartData(
                gridData: const FlGridData(show: false),
                borderData: FlBorderData(show: false),
                titlesData: const FlTitlesData(show: false),
                lineBarsData: [
                  LineChartBarData(
                      show: true,
                      preventCurveOverShooting: true,
                      dotData: const FlDotData(show: false),
                      color: accentLight,
                      spots: const [
                        FlSpot(0, 0),
                        FlSpot(10, 15),
                        FlSpot(12, 25),
                        FlSpot(20, 29),
                        FlSpot(23, 23),
                        FlSpot(26, 32),
                        FlSpot(30, 40),
                      ]),
                  LineChartBarData(
                      show: true,
                      preventCurveOverShooting: true,
                      dotData: const FlDotData(show: false),
                      color: myBlue,
                      spots: const [
                        FlSpot(0, 0),
                        FlSpot(5, 10),
                        FlSpot(7, 8),
                        FlSpot(12, 15),
                        FlSpot(15, 22),
                        FlSpot(22, 19),
                        FlSpot(27, 21),
                        FlSpot(30, 23),
                      ]),
                  LineChartBarData(
                      show: true,
                      preventCurveOverShooting: true,
                      dotData: const FlDotData(show: false),
                      color: myGreen,
                      spots: const [
                        FlSpot(0, 0),
                        FlSpot(3, 3),
                        FlSpot(7, 2),
                        FlSpot(10, 7),
                        FlSpot(12, 4),
                        FlSpot(16, 18),
                        FlSpot(22, 15),
                        FlSpot(26, 28),
                        FlSpot(28, 25),
                        FlSpot(30, 35),
                      ]),
                ])),
          ),
        ],
      ),
    );
  }
}
