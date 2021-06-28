//  \lib/API/SimpleMethod/Assignments/Que01.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; //Step 2

//import 'dart:convert'; // to convert the http response in JSON format
class Que04 extends StatefulWidget {
  @override
  _Que04State createState() => _Que04State();
}

class _Que04State extends State<Que04> {
  final String video1 = "o0-kHH5-7zE";
  Map data; //Step 2
  List userData; //Step 2
  Future getData() async {
    http.Response response =
        await http.get("https://jsonplaceholder.typicode.com/albums/1");
    // debugPrint(response.body); Step 1
    data = json.decode(response.body);
    setState(() {
//      userData = data["data"];
      userData = data as List;
    });
    //debugPrint(userData.toString()); //Step 2
    //See the output in DEBUG CONSOLE we get in STEP 1 & STEP 2
    //in STEP 2 we only get the data
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
        title: WidgetAppBar("Store/Display data(Error)"),
      ),
      body: ListView.builder(
        itemCount: userData == null ? 0 : userData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(" ${userData[index]["title"]}"),
                )
              ],
            ),
          ));
        },
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
