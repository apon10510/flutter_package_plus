import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioFlutter extends StatefulWidget {
  const DioFlutter({super.key});

  @override
  State<DioFlutter> createState() => _DioFlutterState();
}

class _DioFlutterState extends State<DioFlutter> {
  dynamic jsonList; // varialble
  getHttp() async {
    var response = await Dio()
        .get('https://aponali.github.io/api/allapon.json'); // get data
    if (response.statusCode == 200) {
      setState(() {
        jsonList = response.data as List;
      });
      // print(response);
    }
  }

  @override
  void initState() {
    getHttp(); // it's important other wise it data not show screen
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: jsonList == null
              ? 0
              : jsonList.length, // length the list and data if null show 0
          itemBuilder: (b, index) {
            return Text(jsonList[index]['allappname']);
          }),
    );
  }
}
