import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPerencesFlutter extends StatefulWidget {
  const SharedPerencesFlutter({super.key});

  @override
  State<SharedPerencesFlutter> createState() => _SharedPerencesFlutterState();
}

class _SharedPerencesFlutterState extends State<SharedPerencesFlutter> {
  int _counter = 0;

  _incrementsava() async {
    SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance(); // Important
    int? saveValue = sharedPreferences.getInt('Int');
    setState(() {
      if (saveValue != null) {
        _counter = saveValue;
      }
    });
  }

  void _incrementCounter() async {
    SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance(); 
    setState(() {
      _counter++;
      sharedPreferences.setInt('Int', _counter);
    });
  }

  @override
  void initState() {
    _incrementsava();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
