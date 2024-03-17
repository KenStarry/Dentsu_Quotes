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
                  FlSpot(5, 15),
                  FlSpot(8, 25),
                  FlSpot(17, 13),
                  FlSpot(22, 45)
                ]),
            LineChartBarData(
                show: true,
                preventCurveOverShooting: true,
                dotData: const FlDotData(show: false),
                color: myBlue,
                spots: const [
                  FlSpot(0, 0),
                  FlSpot(5, 23),
                  FlSpot(16, 8),
                  FlSpot(20, 33),
                  FlSpot(30, 20)
                ]),
            LineChartBarData(
                show: true,
                preventCurveOverShooting: true,
                dotData: const FlDotData(show: false),
                color: myGreen,
                spots: const [
                  FlSpot(0, 0),
                  FlSpot(3, 9),
                  FlSpot(7, 16),
                  FlSpot(17, 32),
                  FlSpot(24, 40)
                ]),
          ])),
    );
  }
}
