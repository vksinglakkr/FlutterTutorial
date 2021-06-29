//  \lib/API/SimpleMethod/Assignments/Que01.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/API/models/Assignment3/album.dart';
import 'package:flutter_tutorial/API/models/Assignment3/Services.dart';
//import 'dart:async';
//import 'dart:convert'; // to convert the http response in JSON format

// Step 1
// import 3 basic package a) http b) convert  c) async

// Step 2
// Create a class for the API
// we have created album.dart using https://app.quicktype.io/
// import the dart file, in our case it is album.dart

// Step 3
// Write a function to fetch the API data from url
// we have written fetchAlbum

// type of function depends of the API,
// in our case it is String type so we write simply <Album> otherwise <List<Album>>
// in case of without models we not mention anything i.e. simply Future fetchdata()

// Step 5
// Display data in UI
class HomePage3 extends StatefulWidget {
  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  final String video1 = "uqkTZ0POP10"; //final for Assignment3 FutureBuilder
  // Future<Album> _convertedJsonData;
  @override
//   void initState() {
//     super.initState();
//     Services.fetchData().then((album) {
// //      setState(() {
// //        _convertedJsonData = album;
// //      });
//     });
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("Store/Display"),
      ),
      body: Center(
        child: FutureBuilder<Album>(
            future: Services.fetchData(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else {
                return Text('Still Loading');
              }
            }),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
