//  \lib/API/SimpleMethod/Assignments/Que01.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/API/models/Assignment3/album.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; //Step 2
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
Future<Album> fetchData() async {
  // as far as fetching is concerned, it is same for all methods.
  http.Response response =
      await http.get('https://jsonplaceholder.typicode.com/albums/1');
//      await http.get('https://jsonplaceholder.typicode.com/albums/2');
  // we can check by writting debugPrint(response.body);
  debugPrint(response.body);
  // it will simply return the string in Debug Console.
  if (response.statusCode == 200) {
// Step 4
// Now Write code to convert the data into json format
    // For decode/convert
    // without models we use this return json.decode(response.body);
    // as we are using models we have two options
    // either return albumFromJson(response.body);
    // or return Album.fromJson(jsonDecode(response.body)); // Alternate
    // we can see the convert data using debugPrint(albumFromJson(response.body).toString());
    debugPrint(albumFromJson(response.body).toString());
    return albumFromJson(response.body);
  } else {
    return Album();
  }
}

// Step 5
// Display data in UI
class HomePage3 extends StatefulWidget {
  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "uqkTZ0POP10"; //final for Assignment3 FutureBuilder
  Future<Album> futureData;
  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("Store/Display"),
      ),
      body: Center(
        child: FutureBuilder<Album>(
            future: futureData,
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
