import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LeadsContent extends StatefulWidget {
  const LeadsContent({super.key});

  @override
  State<LeadsContent> createState() => _LeadsContentState();
}

class _LeadsContentState extends State<LeadsContent> {
  late final List<ChartData> chartData;

  @override
  void initState() {
    super.initState();

    chartData = <ChartData>[
      ChartData(
          category: 'Accounts',
          y1: 0,
          y2: 100,
          y3: 75,
          y4: 65,
          y5: 43,
          color: accent),
      ChartData(
          category: 'Credit',
          y1: 0,
          y2: 87,
          y3: 54,
          y4: 12,
          y5: 55,
          color: myBlue),
      ChartData(
          category: 'Insurance',
          y1: 0,
          y2: 66,
          y3: 32,
          y4: 65,
          y5: 33,
          color: myGreen),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.transparent,
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        series: <CartesianSeries>[
          StackedLineSeries<ChartData, String>(
            dataSource: chartData,
            pointColorMapper: (chartData, _) => chartData.color,
            xValueMapper: (chartData, _) => chartData.category,
            yValueMapper: (chartData, _) => chartData.y1,
          ),
          StackedLineSeries<ChartData, String>(
            dataSource: chartData,
            pointColorMapper: (chartData, _) => chartData.color,
            xValueMapper: (chartData, _) => chartData.category,
            yValueMapper: (chartData, _) => chartData.y2,
          ),
          StackedLineSeries<ChartData, String>(
            dataSource: chartData,
            pointColorMapper: (chartData, _) => chartData.color,
            xValueMapper: (chartData, _) => chartData.category,
            yValueMapper: (chartData, _) => chartData.y3,
          ),

        ],
      ),
    );
  }
}

class ChartData {
  final String category;
  final int y1;
  final int y2;
  final int y3;
  final int y4;
  final int y5;
  final Color? color;

  ChartData(
      {required this.y1,
      required this.y2,
      required this.y3,
      required this.y4,
      required this.y5,
      required this.category,
      this.color});
}
