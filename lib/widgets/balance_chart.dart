import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutterbank/constants/colors.dart';

// @todo: these constants will be feed in as props eventually
const kMaxY = 7.0; // base on something like max value + 10% for some headroom
const kBackgroundColor = kSwatchColor2;
const kAxisLabelsColor = kSwatchColor4;
const kLineColor = kSwatchColor9;
const kHistoricalBalances = [
  1.0,
  3.0,
  2.0,
  4.0,
  3.0,
  5.0
]; // assume 6 points = last 6 months of data

class BalanceChart extends StatelessWidget {
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
              backgroundColor: kBackgroundColor,
              maxY: kMaxY,
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
                    color: kAxisLabelsColor,
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
                      case 6:
                        return "Jul";
                      case 7:
                        return "Aug";
                      case 8:
                        return "Sep";
                      case 9:
                        return "Oct";
                      case 10:
                        return "Nov";
                      case 11:
                        return "Dec";
                      default:
                        return '';
                    }
                  },
                ),
                leftTitles: SideTitles(showTitles: false),
              ),
              lineBarsData: [
                LineChartBarData(
                  colors: [kLineColor],
                  dotData: FlDotData(
                    show: false,
                  ),
                  isCurved: true,
                  barWidth: 4,
                  belowBarData: BarAreaData(
                    show: true,
                    colors: [
                      kLineColor.withOpacity(0.3),
                    ],
                  ),
                  spots: [
                    FlSpot(3, 1),
                    FlSpot(4, 3),
                    FlSpot(5, 2),
                    FlSpot(6, 4),
                    FlSpot(7, 3),
                    FlSpot(8, 5),
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
