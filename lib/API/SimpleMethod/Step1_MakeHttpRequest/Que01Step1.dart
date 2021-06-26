//  \lib/API/Step1_MakeHttpRequest\Que01Step1.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

//import 'dart:convert'; // to convert the http response in JSON format
class Que01Step1 extends StatefulWidget {
  @override
  _Que01Step1State createState() => _Que01Step1State();
}

class _Que01Step1State extends State<Que01Step1> {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "o0-kHH5-7zE";
  Future getData() async {
    http.Response response =
        await http.get("https://reqres.in/api/users?page2");
    if (response.statusCode == 200) {
      debugPrint(response.body);
    } else {
      return null;
    }
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
