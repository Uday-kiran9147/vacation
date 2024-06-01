import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'dart:convert';

class LineCharts extends StatelessWidget {
  const LineCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Line Charts Syncfusion"),
      ),
      body: Container(
        height: 600,
        width: 800,
        decoration: BoxDecoration(border: Border.all(color: Colors.black)),
        child: Card(
          child: SfCartesianChart(
            title: ChartTitle(text: 'Blood Pressure'),
            legend: Legend(isVisible: true),
            primaryXAxis: CategoryAxis(),
            primaryYAxis: NumericAxis(
              // numberFormat: TextInputFormatter(),
              axisLabelFormatter: (AxisLabelRenderDetails details) {
                final value = details.value.toInt();
                final bp = bpdata.firstWhere(
                    (bp) => bp.systolic == value || bp.diastolic == value,
                    orElse: () => BP(date: DateTime.now(), systolic: value, diastolic: value));
                return ChartAxisLabel('${bp.systolic}/${bp.diastolic}', TextStyle());
              },
            ),
            series: <CartesianSeries>[
              LineSeries<BP, String>(
                dataSource: bl.bp,
                xValueMapper: (BP datum, _) => datum.date.year.toString(),
                yValueMapper: (BP datum, _) => datum.systolic.toDouble(),
                name: 'Systolic',
              ),
              // LineSeries<BP, String>(
              //   dataSource: bl.bp,
              //   xValueMapper: (BP datum, _) => datum.date.year.toString(),
              //   yValueMapper: (BP datum, _) => datum.diastolic.toDouble(),
              //   name: 'Diastolic',
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

BloodP bl = BloodP(title: "Blood Pressure", bp: bpdata);

// ignore_for_file: public_member_api_docs, sort_constructors_first
class BP {
  DateTime date;
  int systolic;
  int diastolic;
  BP({
    required this.date,
    required this.systolic,
    required this.diastolic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'date': date.toIso8601String(),
      'systolic': systolic,
      'diastolic': diastolic,
    };
  }

  factory BP.fromMap(Map<String, dynamic> map) {
    return BP(
      date: DateTime.parse(map['date'] as String),
      systolic: map['systolic'] as int,
      diastolic: map['diastolic'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory BP.fromJson(String source) =>
      BP.fromMap(json.decode(source) as Map<String, dynamic>);
}

class BloodP {
  String title;
  List<BP> bp;
  BloodP({
    required this.title,
    required this.bp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'bp': bp.map((x) => x.toMap()).toList(growable: false),
    };
  }

  factory BloodP.fromMap(Map<String, dynamic> map) {
    return BloodP(
      title: map['title'] as String,
      bp: List<BP>.from(
        (map['bp'] as List).map<BP>((x) => BP.fromMap(x as Map<String, dynamic>)),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory BloodP.fromJson(String source) =>
      BloodP.fromMap(json.decode(source) as Map<String, dynamic>);
}

List<BP> bpdata = [
  BP(date: DateTime.now(), systolic: 120, diastolic: 70),
  BP(
      date: DateTime.now().subtract(Duration(days: 400,)),
      systolic: 110,
      diastolic: 80),
  BP(
      date: DateTime.now().subtract(Duration(days: 800)),
      systolic: 130,
      diastolic: 80)
];

Map<String, dynamic> bp = {
  'title': "Blood pressure",
  "bp": [
    {"date": "2024-06-01T18:09:05.078851", "systolic": 120, "diastolic": 80},
    {"date": "2024-05-31T18:09:05.078851", "systolic": 122, "diastolic": 82}
  ],
};
