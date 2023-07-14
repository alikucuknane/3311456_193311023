import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  final List<double> data = [100, 200, 150, 75];
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Sayfası'),
      ),
      body: Center(
        child: Container(
          height: 300,
          padding: const EdgeInsets.all(16.0),
          child: LineChart(
            LineChartData(
              lineTouchData: const LineTouchData(enabled: false),
              gridData: const FlGridData(show: false),
              titlesData: const FlTitlesData(show: false),
              borderData: FlBorderData(show: false),
              minX: 0,
              maxX: data.length.toDouble() - 1,
              minY: 0,
              maxY: 250,
              lineBarsData: [
                LineChartBarData(
                  spots: data.asMap().entries.map((entry) {
                    return FlSpot(entry.key.toDouble(), entry.value);
                  }).toList(),
                  isCurved: true,
                  color: Colors.amber,
                  barWidth: 4,
                  dotData: const FlDotData(show: false),
                  belowBarData: BarAreaData(
                    show: true,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
