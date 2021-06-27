//  \lib/API/models/Assignment4/HomePage.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/urlFiles.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/API/models/Assignment4/weather.dart';
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
Future<Weather> fetchData() async {
  // as far as fetching is concerned, it is same for all methods.
  http.Response response = await http.get(OpenWeatherUrl);
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
    // either return weatherFromJson(response.body);
    // or return Weather.fromJson(jsonDecode(response.body)); // Alternate
    // we can see the convert data using debugPrint(weatherFromJson(response.body).toString());
    debugPrint(weatherFromJson(response.body).toString());
    return weatherFromJson(response.body);
  } else {
    return Weather();
  }
}

// Step 5
// Display data in UI
class HomePage4 extends StatefulWidget {
  @override
  _HomePage4State createState() => _HomePage4State();
}

class _HomePage4State extends State<HomePage4> {
  final String url1 = "";
  final String image1 = "";
  final String video1 = "ToPdSd42UKA"; //final for Assignment4 OpenWeather
  Future<Weather> futureData;
  @override
  void initState() {
    super.initState();
    futureData = fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("API - OpenWeather"),
      ),
      body: Center(
        child: FutureBuilder<Weather>(
            future: futureData,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var iconUrl =
                    'http://openweathermap.org/img/wn/${snapshot.data.weather[0].icon}@2x.png';
                debugPrint(iconUrl);
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width,
//                        color: Colors.red,
                        child: Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(snapshot.data.name),
                              ), //"name":"Kurukshetra"

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                    (snapshot.data.weather[0].description)),
                              ),
                              // + snapshot.data.weather[0].icon + "@2x.png"',
//                              var iconUrl = '"http://openweathermap.org/img/wn/" + snapshot.data.weather[0].icon + "@2x.png"',
                              Image(image: NetworkImage(iconUrl)),
                            ],
                          ),
                        ),
                      ), //"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],
                      Text((snapshot.data.weather[0]
                          .icon)), //"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],
                      Text((snapshot.data.weather[0]
                          .main)), //"weather":[{"id":800,"main":"Clear","description":"clear sky","icon":"01d"}],
                      Text((snapshot.data.wind.speed)
                          .toString()), //"wind":{"speed":2.95,"deg":302,"gust":4.28},
                      Text((snapshot.data.wind.gust)
                          .toString()), //"wind":{"speed":2.95,"deg":302,"gust":4.28},
                      Text((snapshot.data.clouds.all)
                          .toString()), //"clouds":{"all":2},
                      Text((snapshot.data.cod).toString()), //"cod":200
                      Text((snapshot.data.coord.lat)
                          .toString()), //"coord":{"lon":76.8483,"lat":29.9694}
                      Text((snapshot.data.coord.lon)
                          .toString()), //"coord":{"lon":76.8483,"lat":29.9694}
                      Text(snapshot.data.sys
                          .country), //"sys":{"country":"IN","sunrise":1624751618,"sunset":1624802246}
                      Text((snapshot.data.sys.sunrise)
                          .toString()), //"sys":{"country":"IN","sunrise":1624751618,"sunset":1624802246}
                      Text((snapshot.data.sys.sunset)
                          .toString()), //"sys":{"country":"IN","sunrise":1624751618,"sunset":1624802246}
                      Text((snapshot.data.dt).toString()), //"dt":1624779902
                      Text((snapshot.data.visibility)
                          .toString()), //"visibility":10000
                      Text(snapshot.data.base), //"base":"stations"
                      Text((snapshot.data.main.pressure)
                          .toString()), //"main":{"temp":314.45,"feels_like":314.42,"temp_min":314.45,"temp_max":314.45,"pressure":1002,"humidity":20,"sea_level":1002,"grnd_level":975}
                      Text((snapshot.data.main.temp).toString() +
                          "\u00B0"), //"main":{"temp":314.45,"feels_like":314.42,"temp_min":314.45,"temp_max":314.45,"pressure":1002,"humidity":20,"sea_level":1002,"grnd_level":975}
                      Text((snapshot.data.main.humidity)
                          .toString()), //"main":{"temp":314.45,"feels_like":314.42,"temp_min":314.45,"temp_max":314.45,"pressure":1002,"humidity":20,"sea_level":1002,"grnd_level":975}
                      Text((snapshot.data.main.tempMax)
                          .toString()), //"main":{"temp":314.45,"feels_like":314.42,"temp_min":314.45,"temp_max":314.45,"pressure":1002,"humidity":20,"sea_level":1002,"grnd_level":975}
                      Text((snapshot.data.main.tempMin)
                          .toString()), //"main":{"temp":314.45,"feels_like":314.42,"temp_min":314.45,"temp_max":314.45,"pressure":1002,"humidity":20,"sea_level":1002,"grnd_level":975}
                      Text((snapshot.data.timezone)
                          .toString()), //"timezone":19800
                    ],
                  ),
                );
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
