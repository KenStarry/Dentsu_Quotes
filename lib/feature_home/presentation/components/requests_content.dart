import 'package:dentsu_quotes/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class RequestsContent extends StatefulWidget {
  const RequestsContent({super.key});

  @override
  State<RequestsContent> createState() => _RequestsContentState();
}

class _RequestsContentState extends State<RequestsContent> {
  late final List<ChartData> chartData;

  @override
  void initState() {
    super.initState();

    chartData = <ChartData>[
      ChartData('Accounts', 50, color: accentLight),
      ChartData('Insurance', 50, color: myGreen),
      ChartData('Credit', 50, color: myBlue),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.transparent,
      child: SfCircularChart(
        series: <CircularSeries>[
          PieSeries<ChartData, String>(
            dataSource: chartData,
            pointColorMapper: (chartData, _) => chartData.color,
            xValueMapper: (chartData, _) => chartData.x,
            yValueMapper: (chartData, _) => chartData.y,
            animationDuration: 1000,
          )
        ],
      ),
    );
  }
}

class ChartData {
  final String x;
  final double y;
  final Color? color;

  ChartData(this.x, this.y, {this.color});
}
