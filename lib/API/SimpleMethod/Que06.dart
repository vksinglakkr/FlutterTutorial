//  \lib/API/models/Assignment5/HomePage.dart

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
class HomePage6 extends StatefulWidget {
  @override
  _HomePage6State createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {
  final String video1 = "aIJU68Phi1w"; //final for Assignment6 OpenWeather
  var name;
  var height;
  var mass;
  var hairColor;
  var skinColor;
  var eyeColor;
  var birthYear;
  var gender;
  var homeworld;
  var films;
  var species;
  var vehicles;
  var starships;
  var created;
  var edited;
  var url;

  Future fetchData() async {
    http.Response response = await http.get("https://swapi.dev/api/people/1");
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
        this.height = convertedJsondata['height'];
        this.mass = convertedJsondata['mass'];
        this.hairColor = convertedJsondata['hair_color'];
        this.skinColor = convertedJsondata['skin_color'];
        this.eyeColor = convertedJsondata['eye_color'];
        this.birthYear = convertedJsondata['birth_year'];
        this.gender = convertedJsondata['gender'];
//         this.homeworld = convertedJsondata['results']['homeworld'];
// //        this.films = convertedJsondata['films'];
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
        title: WidgetAppBar("API - https://Swapi.dev/api/people/1"),
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
              child: Text(this.height != null ? this.height : 'Loading..'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(this.mass != null ? this.mass : 'Loading..'),
            ), //"name":"Kurukshetra"

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text((this.hairColor != null ? this.hairColor : 'Loading..')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text((this.skinColor != null ? this.skinColor : 'Loading..')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text((this.eyeColor != null ? this.eyeColor : 'Loading..')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                  Text((this.birthYear != null ? this.birthYear : 'Loading..')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text((this.gender != null ? this.gender : 'Loading..')),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text(
            //       (this.homeworld != null ? this.homeworld : 'Loading..')),
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Text((this.films != null ? this.films : 'Loading..')),
            // ),
          ],
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
