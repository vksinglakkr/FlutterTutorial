import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

//import 'dart:convert'; // to convert the http response in JSON format
class Que03 extends StatefulWidget {
  @override
  _Que03State createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  final String url1 =
      "https://medium.com/flutter-community/how-to-parse-json-in-flutter-for-beginners-8074a68d7a79";

  var jsonData = '{name: "Dane", alias: "FilledStacks"}';
  Future getData() async {
    http.Response response = await http.get(jsonData);
    debugPrint(response.body);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("make an HTTP Request"),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
