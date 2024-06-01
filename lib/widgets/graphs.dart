import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:intl/intl.dart';

class HealthEntry {
  final DateTime date;
  final double bloodPressure;
  final double bodyWeight;

  HealthEntry({required this.date, required this.bloodPressure, required this.bodyWeight});
}

List<HealthEntry> generateSampleData() {
  return List.generate(30, (index) {
    return HealthEntry(
      date: DateTime.now().subtract(Duration(days: index)),
      bloodPressure: 120 + (index % 10).toDouble(), // Example data
      bodyWeight: 70 + (index % 5).toDouble(),      // Example data
    );
  });
}
List<FlSpot> prepareChartData(List<HealthEntry> entries, String period, {required bool isWeight}) {
  List<FlSpot> spots = [];

  for (var entry in entries) {
    double xValue;
    switch (period) {
      case 'weekly':
        xValue = entry.date.weekday.toDouble(); // Assuming you want to plot days of the week
        break;
      case 'monthly':
        xValue = entry.date.day.toDouble();
        break;
      case 'yearly':
        xValue = entry.date.month.toDouble();
        break;
      default:
        xValue = entry.date.day.toDouble();
    }
    spots.add(FlSpot(xValue, isWeight ? entry.bodyWeight : entry.bloodPressure));
  }

  return spots;
}

class HealthChart extends StatelessWidget {
  final List<HealthEntry> data;
  final String period;
  final bool isWeight;

  const HealthChart({required this.data, required this.period, required this.isWeight});

  @override
  Widget build(BuildContext context) {
    final spots = prepareChartData(data, period, isWeight: isWeight);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: spots,
              isCurved: true,
              color: Colors.blue,
              barWidth: 3,
              dotData: FlDotData(show: true),
              belowBarData: BarAreaData(show: false),
            ),
          ],
          titlesData: FlTitlesData(
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: _getInterval(period),
                getTitlesWidget: (value, meta) {
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      _getBottomTitle(value, period),
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                interval: 10,
                getTitlesWidget: (value, meta) {
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      value.toInt().toString(),
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                  );
                },
              ),
            ),
          ),
          gridData: FlGridData(show: true, drawVerticalLine: true, drawHorizontalLine: true),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.grey, width: 1),
          ),
          lineTouchData: LineTouchData(
            touchTooltipData: LineTouchTooltipData(
              // tooltipBgColor: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }

  double _getInterval(String period) {
    switch (period) {
      case 'weekly':
        return 1;
      case 'monthly':
        return 5;
      case 'yearly':
        return 1;
      default:
        return 1;
    }
  }

  String _getBottomTitle(double value, String period) {
    switch (period) {
      case 'weekly':
        return ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'][value.toInt() - 1];
      case 'monthly':
        return DateFormat('d/M').format(DateTime(DateTime.now().year, DateTime.now().month, value.toInt()));
      case 'yearly':
        return DateFormat.MMM().format(DateTime(0, value.toInt()));
      default:
        return value.toInt().toString();
    }
  }
}

class HealthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<HealthEntry> sampleData = generateSampleData();

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Health Data Chart'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Week'),
              Tab(text: 'Month'),
              Tab(text: 'Year'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            HealthTabView(sampleData: sampleData, period: 'weekly'),
            HealthTabView(sampleData: sampleData, period: 'monthly'),
            HealthTabView(sampleData: sampleData, period: 'yearly'),
          ],
        ),
      ),
    );
  }
}

class HealthTabView extends StatelessWidget {
  final List<HealthEntry> sampleData;
  final String period;

  const HealthTabView({required this.sampleData, required this.period});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Blood Pressure',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
              Expanded(
                child: HealthChart(data: sampleData, period: period, isWeight: false),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Weight',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.green),
                ),
              ),
              Expanded(
                child: HealthChart(data: sampleData, period: period, isWeight: true),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
