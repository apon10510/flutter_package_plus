import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FlPieChartFlutter extends StatelessWidget {
  const FlPieChartFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 300, 
          width: 200,
          child: PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                  color: Colors.red,
                  value: 20,
                  title: 'Apon',
                  showTitle: true,
                  // radius: 70,
                ),
                PieChartSectionData(
                  color: Colors.blue,
                  value: 10,
                  title: 'Apon',
                  showTitle: true,
                  // radius: 70,
                ),
                PieChartSectionData(
                  color: Colors.green,
                  value: 50,
                  title: 'Apon',
                  showTitle: true,
                  // radius: 70,
                ),
                PieChartSectionData(
                  color: Colors.orange,
                  value: 30,
                  title: 'Apon',
                  showTitle: true,
                  // radius: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
