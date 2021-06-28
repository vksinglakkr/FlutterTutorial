//  \lib/API/models/Assignment5/HomePage.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/urlFiles.dart';
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
class HomePage5 extends StatefulWidget {
  @override
  _HomePage5State createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  final String video1 = "ToPdSd42UKA"; //final for Assignment5 OpenWeather
  var temp;
  var description;
  var currently;
  var humidity;
  var windSpeed;
  var visibility;
  var skyIcon;

  Future fetchData() async {
    http.Response response = await http.get(openWeatherUrl);
    if (response.statusCode == 200) {
      var results = json.decode(response.body);
//      var results = jsonDecode(response.body);
      setState(() {
        // see the difference
        // how to write
        // having no bracket i.e. [{
        // having only {}
        // having both [] and {}
        this.temp = results['main'][
            'temp']; //"main":{"temp":314.45,"feels_like":314.42,"temp_min":314.45,"temp_max":314.45,"pressure":1002,"humidity":20,"sea_level":1002,"grnd_level":975}
        this.description = results['weather'][0][
            'description']; //"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}]
        this.currently = results['weather'][0][
            'main']; //"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}]
        this.humidity = results['main'][
            'humidity']; //"main":{"temp":314.45,"feels_like":314.42,"temp_min":314.45,"temp_max":314.45,"pressure":1002,"humidity":20,"sea_level":1002,"grnd_level":975}
        this.windSpeed = results['wind']
            ['speed']; //"wind":{"speed":2.95,"deg":302,"gust":4.28},
        this.visibility = results['visibility']; //"visibility":10000
        this.skyIcon = results['weather'][0]['icon'];
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
        title: WidgetAppBar("API - OpenWeather"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
//                        color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    this.temp != null ? this.temp.toString() : 'Loading..'),
              ), //"name":"Kurukshetra"
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(this.humidity != null
                    ? this.humidity.toString()
                    : 'Loading..'),
              ), //"name":"Kurukshetra"
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Text(this.currently != null ? this.currently : 'Loading..'),
              ), //"name":"Kurukshetra"

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text((this.description != null
                    ? this.description
                    : 'Loading..')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text((this.windSpeed != null
                    ? this.windSpeed.toString()
                    : 'Loading..')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text((this.visibility != null
                    ? this.visibility.toString()
                    : 'Loading..')),
              ),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: skyIcon != null
                      ? Image(
                          image: NetworkImage(
                              'http://openweathermap.org/img/wn/${this.skyIcon}@2x.png'))
                      : Text("Loading image")),
              //  }
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
