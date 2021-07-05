//lib\API\SimpleMethod\Que06Map.dart
// example of a) MAP  b) List within Map
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage6 extends StatefulWidget {
  @override
  _HomePage6State createState() => _HomePage6State();
}

class _HomePage6State extends State<HomePage6> {
  final String image1 = "assets/help/API/response.jpg";
  final String url1 =
      "https://www.geeksforgeeks.org/implementing-rest-api-in-flutter/";
  final String video1 =
      "MEqUx3_KrFo"; // best video for Que06 i.e. of the growing developers

  Map mapResponse;
  List listOfFilms;
  List listOfVehicles;
  List listOfStarships;
  Future fetchData() async {
    http.Response response;
    response = await http.get('https://swapi.dev/api/people/1');
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listOfFilms = mapResponse['films'];
        listOfVehicles = mapResponse['vehicles'];
        listOfStarships = mapResponse['starships'];
      });
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo of \Map also List within Map'),
      ),
      body: mapResponse == null
          ? Container()
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    "Name:" + mapResponse['name'].toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Height:" + mapResponse['height'].toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Mass:" + mapResponse['mass'].toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Hair Color:" + mapResponse['hair_color'].toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text(
                              listOfFilms[index],
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: listOfFilms == null ? 0 : listOfFilms.length,
                  )
                ],
              ),
            ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
