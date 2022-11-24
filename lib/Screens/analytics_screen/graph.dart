import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GraphComponent extends StatelessWidget {
  const GraphComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: LineChart(
        farmData(),
      ),
    );
  }
}

Widget bottomTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff68737d),
    fontWeight: FontWeight.bold,
    fontSize: 16,
  );
  Widget text;
  switch (value.toInt()) {
    case 10:
      text = const Text("10", style: style);
      break;
    case 20:
      text = const Text(
        "20",
        style: style,
      );
      break;
    case 30:
      text = const Text(
        "30",
        style: style,
      );
      break;
    default:
      text = const Text(
        "",
        style: style,
      );
      break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: text,
  );
}

Widget leftTitleWidgets(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color(0xff67727d),
    fontWeight: FontWeight.bold,
    fontSize: 15,
  );
  String text;
  switch (value.toInt()) {
    case 20:
      text = "20K";
      break;
    case 40:
      text = "40K";
      break;
    case 60:
      text = "60K";
      break;
    case 80:
      text = "80K";
      break;
    case 100:
      text = "100K";
      break;
    case 120:
      text = "120K";
      break;
    default:
      return Container();
  }
  return Text(
    text,
    style: style,
    textAlign: TextAlign.left,
  );
}

LineChartData farmData() {
  return LineChartData(
    gridData: FlGridData(
      show: true,
      drawHorizontalLine: true,
      drawVerticalLine: false,
      verticalInterval: 1,
      getDrawingHorizontalLine: (value) {
        return FlLine(
          color: const Color(0xffCFCFCF),
          strokeWidth: 1,
          dashArray: [4, 10],
        );
      },
    ),
    titlesData: FlTitlesData(
      show: true,
      rightTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      topTitles: AxisTitles(
        sideTitles: SideTitles(showTitles: false),
      ),
      bottomTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 30,
          interval: 1,
          getTitlesWidget: bottomTitleWidgets,
        ),
      ),
      leftTitles: AxisTitles(
        sideTitles: SideTitles(
          showTitles: true,
          reservedSize: 50,
          interval: 1,
          getTitlesWidget: leftTitleWidgets,
        ),
      ),
    ),
    borderData: FlBorderData(
      show: true,
      border: Border.all(
        color: Colors.white,
      ),
    ),
    minX: 0,
    minY: 10,
    maxX: 40,
    maxY: 150,
    lineBarsData: [
      LineChartBarData(
        barWidth: 3,
        curveSmoothness: .1,
        color: const Color(0xff149C08),
        spots: const [
          FlSpot(0, 20),
          FlSpot(5, 40),
          FlSpot(10, 60),
          FlSpot(11, 61.5),
          FlSpot(12, 62),
          FlSpot(13, 60),
          FlSpot(14, 40),
          FlSpot(15, 30),
          FlSpot(16, 29.5),
          FlSpot(16, 29),
          FlSpot(17, 28.5),
          FlSpot(18, 30),
          FlSpot(19, 50),
          FlSpot(20, 100),
          FlSpot(20.4, 95),
          FlSpot(22, 90),
          FlSpot(24, 85),
          FlSpot(26, 80),
          FlSpot(28, 60),
          FlSpot(30, 55),
          FlSpot(32, 50),
          FlSpot(34, 45),
          FlSpot(36, 40),
        ],
        isCurved: true,
        dotData: FlDotData(
          show: false,
        ),
      ),
    ],
  );
}
