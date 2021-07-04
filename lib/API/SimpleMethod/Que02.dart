// ../lib/API/SimpleMethod/Que02.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/urlFiles.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; //Step 2

//import 'dart:convert'; // to convert the http response in JSON format
class Que02 extends StatefulWidget {
  @override
  _Que02State createState() => _Que02State();
}

class _Que02State extends State<Que02> {
  final String image1 = "assets/help/API/response.jpg";
  final String url1 = "https://newsapi.org/";

  // final for Que02 Step1,2,3,4
  Map mapData; //Step 2
  List convertedJsonData; //Step 2
  Future fetchData() async {
    //Step 1
    http.Response response = await http.get(newsUrl);
    if (response.statusCode == 200) {
      // debugPrint(response.body); Step 1
      mapData = json.decode(response.body);
      // instead of storing it through mapdat we can directly store it,
      //convertedJsonData = json.decode(response.body)["articles"];
      setState(() {
        convertedJsonData = mapData["articles"];
      });
      debugPrint(convertedJsonData.toString());
      //See the output in DEBUG CONSOLE we get in STEP 1 & STEP 2
      //in STEP 2 we only get the data } else {
    } else {
      return null;
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("Top Head Lines India"),
      ),
      body: ListView.builder(
        itemCount: convertedJsonData == null ? 0 : convertedJsonData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        NetworkImage(convertedJsonData[index]["urlToImage"]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      child: Text(" ${convertedJsonData[index]["author"]}"),
//                          " ${convertedJsonData[index]["author"]} ${convertedJsonData[index]["title"]}"),
                    ),
                  )
                ],
              ),
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
