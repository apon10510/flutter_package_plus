import 'package:flutter/material.dart';
import 'package:flutter_package_plus/dio/dio.dart';

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
      home: const DioFlutter(),
    );
  }
}
