import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterFlutter extends StatefulWidget {
  const GoRouterFlutter({super.key});

  @override
  State<GoRouterFlutter> createState() => _GoRouterFlutterState();
}

class _GoRouterFlutterState extends State<GoRouterFlutter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            context.goNamed('/go');
          },
          child: const Text('GoPage'),
        ),
      ),
    );
  }
}

class GoPage extends StatefulWidget {
  const GoPage({super.key});

  @override
  State<GoPage> createState() => _GoPageState();
}

class _GoPageState extends State<GoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          color: Colors.orange,
        ),
      ),
    );
  }
}
