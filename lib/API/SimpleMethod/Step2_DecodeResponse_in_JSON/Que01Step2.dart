//  \lib/API/Step1_MakeHttpRequest\Que01Step1.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; //Step 2

//import 'dart:convert'; // to convert the http response in JSON format
class Que01Step2 extends StatefulWidget {
  @override
  _Que01Step2State createState() => _Que01Step2State();
}

class _Que01Step2State extends State<Que01Step2> {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "o0-kHH5-7zE";
  Map data1; //Step 2
  List userData; //Step 2
  Future getData() async {
    http.Response response =
        await http.get("https://reqres.in/api/users?page2");
    if (response.statusCode == 200) {
      // debugPrint(response.body); Step 1
      data1 = json.decode(response.body);
      setState(() {
        userData = data1["data"];
      });
      debugPrint(userData.toString());
    } else {
      //See the output in DEBUG CONSOLE we get in STEP 1 & STEP 2
      //in STEP 2 we only get the data } else {
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
