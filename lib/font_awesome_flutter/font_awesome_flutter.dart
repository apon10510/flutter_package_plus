import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeFlutterFlutter extends StatefulWidget {
  const FontAwesomeFlutterFlutter({super.key});

  @override
  State<FontAwesomeFlutterFlutter> createState() =>
      _FontAwesomeFlutterFlutterState();
}

class _FontAwesomeFlutterFlutterState extends State<FontAwesomeFlutterFlutter> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FaIcon(FontAwesomeIcons.searchPlus),
      ),
    );
  }
}
