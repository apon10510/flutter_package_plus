import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpFlutter extends StatefulWidget {
  const HttpFlutter({super.key});

  @override
  State<HttpFlutter> createState() => _HttpFlutterState();
}

class _HttpFlutterState extends State<HttpFlutter> {
  dynamic data ;
  Future getData() async {
    var res =
        await http.get(Uri.parse('https://aponali.github.io/api/allapon.json'));
    setState(() {
      var decode = json.decode(res.body);
      data = decode;
      // print(data);
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: data == null ? 0 :  data.length,
        itemBuilder: (context, index) {
          return Text(data[index]["allappname"]);
        },
      ),
    );
  }
}
