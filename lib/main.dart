import 'package:flutter/material.dart';
import 'package:flutter_package_plus/fl_chart/fl_pie_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Package',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const FlPieChartFlutter(),
    );
  }
}
