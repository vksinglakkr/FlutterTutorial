// ../lib/API/SimpleMethod/Que03.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
//import 'dart:convert'; // to convert the http response in JSON format

// Step 1
// import 3 basic package a) http b) convert  c) async

// Step 2
// Create a class for the API
// we have created album.dart using https://app.quicktype.io/
// import the dart file, in our case it is album.dart

// Step 3
// Write a function to fetch the API data from url
// we have written fetchData

// Step 5
// Display data in UI
class HomePage3 extends StatefulWidget {
  @override
  _HomePage3State createState() => _HomePage3State();
}

class _HomePage3State extends State<HomePage3> {
    final String image1 = "assets/help/API/response.jpg";
final String video1 = "aIJU68Phi1w"; //final for Assignment6 OpenWeather
  var name;
  var population;
  var diameter;

  Future fetchData() async {
    http.Response response = await http.get("https://swapi.dev/api/planets/3");
    if (response.statusCode == 200) {
      var convertedJsondata = json.decode(response.body);
//      var results = jsonDecode(response.body);
      setState(() {
        // see the difference
        // how to write
        // having no bracket i.e. [{
        // having only {}
        // having both [] and {}
        this.name = convertedJsondata['name'];
        this.population = convertedJsondata['population'];
        this.diameter = convertedJsondata['diameter'];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    this.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("API - https://Swapi.dev/api/planets/3"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(this.name != null ? this.name : 'Loading..'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text(this.population != null ? this.population : 'Loading..'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(this.diameter != null ? this.diameter : 'Loading..'),
            ), //"name":"Kurukshetra"
          ],
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
