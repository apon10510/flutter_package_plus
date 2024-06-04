import 'package:flutter/material.dart';
import 'font_awesome_flutter/font_awesome_flutter.dart';

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
      home: const FontAwesomeFlutterFlutter(),
    );
  }
}
