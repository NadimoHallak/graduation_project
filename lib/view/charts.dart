import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          PieChart(
            PieChartData(
              sections: getSection(),
            ),
          )
        ],
      ),
    );
  }

  getSection() => PieData.data
      .asMap()
      .map<int, PieChartSectionData>((index, data) {
        final value = PieChartSectionData(
          color: data.color,
          title: '${data.name} %',
          titleStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
          ),
          value: data.percent,
        );
        return MapEntry(index, value);
      })
      .values
      .toList();
}

class PieData {
  static List<Data> data = [
    Data(name: 'Red', percent: 30, color: Colors.red),
    Data(name: 'Blue', percent: 40, color: Colors.blue),
    Data(name: 'Green', percent: 16, color: Colors.green),
    Data(name: 'Amber', percent: 14, color: Colors.amber),
  ];
}

class Data {
  String name;
  double percent;
  Color color;

  Data({required this.name, required this.percent, required this.color});
}
