import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:transactions/config/responsive.dart';
import 'package:transactions/style/colors.dart';

class BarChartComponent extends StatelessWidget {
  const BarChartComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        gridData: const FlGridData(
          drawHorizontalLine: true,
          horizontalInterval: 30,
        ),
        titlesData: FlTitlesData(
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              reservedSize: 30,
              showTitles: true,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return const Text('0',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 30:
                    return const Text('30k',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 60:
                    return const Text('60k',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 90:
                    return const Text('90k',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  default:
                    return const SizedBox.shrink();
                }
              },
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return const Text('JAN',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 1:
                    return const Text('FEB',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 2:
                    return const Text('MAR',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 3:
                    return const Text('APR',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 4:
                    return const Text('MAY',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 5:
                    return const Text('JUN',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 6:
                    return const Text('JUL',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 7:
                    return const Text('AUG',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 8:
                    return const Text('SEP',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 9:
                    return const Text('OCT',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 10:
                    return const Text('NOV',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  case 11:
                    return const Text('DEC',
                        style: TextStyle(color: Colors.grey, fontSize: 12));
                  default:
                    return const SizedBox.shrink();
                }
              },
            ),
          ),
        ),
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(
            getTooltipItem: (group, groupIndex, rod, rodIndex) {
              return BarTooltipItem(
                '${rod.toY}',
                TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
        ),
        barGroups: List.generate(12, (index) {
          final yValues = [10, 50, 30, 80, 70, 20, 90, 60, 90, 10, 40, 80];
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: yValues[index].toDouble(),
                color: Colors.black,
                borderRadius: BorderRadius.circular(0),
                width: Responsive.isDesktop(context) ? 40 : 10,
                backDrawRodData: BackgroundBarChartRodData(
                  show: true,
                  toY: 90,
                  color: AppColors.barBg,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
