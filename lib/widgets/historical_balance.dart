import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutterbank/constants/colors.dart';

class HistoricalBalance extends StatelessWidget {
  List<Color> gradientColors = [
    kSwatchColor9,
  ];

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        backgroundColor: kSwatchColor2,
        maxY: 10,
        borderData: FlBorderData(
          show: false,
        ),
        gridData: FlGridData(
          show: true,
          drawVerticalLine: true,
          drawHorizontalLine: false,
          getDrawingVerticalLine: (value) {
            return FlLine(
              color: const Color(0xff37434d),
              strokeWidth: 1,
            );
          },
        ),
        titlesData: FlTitlesData(
          bottomTitles: SideTitles(
            showTitles: true,
            getTitles: (month) {
              switch (month.toInt()) {
                case 0:
                  return "JAN";
                case 1:
                  return "FEB";
                case 2:
                  return "MAR";
                case 3:
                  return "APR";
                case 4:
                  return "MAY";
                case 5:
                  return "JUN";
                default:
                  return "TODO";
              }
            },
          ),
          leftTitles: SideTitles(showTitles: false),
        ),
        lineBarsData: [
          LineChartBarData(
            colors: [kSwatchColor9],
            dotData: FlDotData(
              show: false,
            ),
            isCurved: true,
            preventCurveOverShooting: true,
            barWidth: 4,
            belowBarData: BarAreaData(
              show: true,
              colors: gradientColors
                  .map((color) => color.withOpacity(0.3))
                  .toList(),
            ),
            spots: [
              FlSpot(0, 3),
              FlSpot(1, 1),
              FlSpot(2, 5),
              FlSpot(3, 6),
              FlSpot(4, 0),
              FlSpot(5, 2),
            ],
          ),
        ],
      ),
    );
  }
}
