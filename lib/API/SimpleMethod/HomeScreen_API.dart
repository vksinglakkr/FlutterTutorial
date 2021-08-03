//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que01.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que02.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que03.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que04.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que05.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que06.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que07.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que08_LoadLocalJson.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que09_Localvariable.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que09a_mapLocalVariable.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que09b_Localvariable.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que10_SearchLocalJson.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que11Map.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que12String.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que13List.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que14List.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que15.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que16List.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que17map.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que18Local.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que19Local.dart';
import 'package:flutter_tutorial/API/SimpleMethod/Que20countries.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeAPI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("json.decode")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  Center(child: Text("String", style: TextStyle(fontSize: 16))),
                  ButtonsCode(
                      Que12(),
                      "lib/API/SimpleMethod/Que12String.dart",
                      "http://thegrowingdeveloper.org/apiview?id=1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Center(child: Text("List", style: TextStyle(fontSize: 16))),
                  ButtonsCode(
                      Que13(),
                      "lib/API/SimpleMethod/Que13List.dart",
                      "https://thegrowingdeveloper.org/apiview?id=4\nListViewer",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que14(),
                      "lib/API/SimpleMethod/Que14List.dart",
                      "https://jsonplaceholder.typicode.com/posts\nListViewer",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que15(),
                      "lib/API/SimpleMethod/Que15.dart",
                      "https://jsonplaceholder.typicode.com/photos",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que16(),
                      "lib/API/SimpleMethod/Que16List.dart",
                      "https://restcountries.eu/rest/v2/all",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que09b(),
                      "lib/API/SimpleMethod/Que09b_Localvariable.dart",
                      "List (without key) defined in Local variable",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que09(),
                      "lib/API/SimpleMethod/Que09_Localvariable.dart",
                      "List (with key) defined in Local variable",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que19Local(),
                      "lib/API/SimpleMethod/Que19Local.dart",
                      "User.json (Local)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Center(child: Text("Map", style: TextStyle(fontSize: 16))),
                  ButtonsCode(
                      HomePage4(),
                      "lib/API/SimpleMethod/Que04.dart",
                      "https://jsonplaceholder.typicode.com/albums/1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11(),
                      "lib/API/SimpleMethod/Que11Map.dart",
                      "http://thegrowingdeveloper.org/apiview?id=2\nMap, also List within Map, ListViewer",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01(),
                      "lib/API/SimpleMethod/Que01.dart",
                      "https://reqres.in/api/users?page2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que20Countries(),
                      "lib/API/SimpleMethod/Que20countries.dart",
                      "Demo of self generation of key value",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      HomePage3(),
                      "lib/API/SimpleMethod/Que03.dart",
                      "https://Swapi.dev/api/planets/3",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      HomePage6(),
                      "lib/API/SimpleMethod/Que06.dart",
                      "https://Swapi.dev/api/people/1\nMap, also List within Map",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      HomePage7(),
                      "lib/API/SimpleMethod/Que07.dart",
                      "https://Swapi.dev/api/starships/9",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(HomePage5(), "lib/API/SimpleMethod/Que05.dart",
                      "OpenWeather", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que02(),
                      "lib/API/SimpleMethod/Que02.dart",
                      "https://newsapi.org/",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que17(),
                      "lib/API/SimpleMethod/Que17.dart",
                      "https://www.metaweather.com/api/location/28743736/",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que08Local(),
                      "lib/API/SimpleMethod/Que08_LoadLocalJson.dart",
                      "starwars_data.json (Local)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que18Local(),
                      "lib/API/SimpleMethod/Que18Local.dart",
                      "User.json (Local)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que09a(),
                      "lib/API/SimpleMethod/Que09a_mapLocalVariable.dart",
                      "Map defined in Local variable",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que10Search(),
                      "lib/API/SimpleMethod/Que10_SearchLocalJson.dart",
                      "rootBundle.loadString, json.decode, \nListViewBuilder Search local Json",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
