import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

//import 'dart:convert'; // to convert the http response in JSON format
class Que02Step1 extends StatefulWidget {
  @override
  _Que02Step1State createState() => _Que02Step1State();
}

class _Que02Step1State extends State<Que02Step1> {
  final String video1 = "apPH1CCOtKQ"; // final for Que02 Step1,2,3,4
  Future getData() async {
    http.Response response = await http.get(
        "http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline");
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
