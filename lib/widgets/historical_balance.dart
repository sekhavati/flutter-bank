import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutterbank/constants/colors.dart';

class HistoricalBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: kSwatchColor2,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: LineChart(
            LineChartData(
              backgroundColor: kSwatchColor2,
              maxY: 7,
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
                  textStyle: const TextStyle(
                    color: kSwatchColor4,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  getTitles: (month) {
                    switch (month.toInt()) {
                      case 0:
                        return "Jan";
                      case 1:
                        return "Feb";
                      case 2:
                        return "Mar";
                      case 3:
                        return "Apr";
                      case 4:
                        return "May";
                      case 5:
                        return "Jun";
                      default:
                        return '';
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
                    colors: [
                      kSwatchColor9.withOpacity(0.3),
                    ],
                  ),
                  spots: [
                    FlSpot(0, 1),
                    FlSpot(1, 3),
                    FlSpot(2, 2),
                    FlSpot(3, 4),
                    FlSpot(4, 3),
                    FlSpot(5, 5),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
