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
                  ButtonsCode(Que12(), "lib/API/SimpleMethod/Que12String.dart",
                      "http://thegrowingdeveloper.org/apiview?id=1"),
                  Center(child: Text("List", style: TextStyle(fontSize: 16))),
                  ButtonsCode(Que15(), "lib/API/SimpleMethod/Que15.dart",
                      "https://jsonplaceholder.typicode.com/photos"),
                  ButtonsCode(Que13(), "lib/API/SimpleMethod/Que13List.dart",
                      "https://thegrowingdeveloper.org/apiview?id=4\nListViewer"),
                  ButtonsCode(Que14(), "lib/API/SimpleMethod/Que14Map.dart",
                      "https://jsonplaceholder.typicode.com/posts\nListViewer"),
                  ButtonsCode(Que16(), "lib/API/SimpleMethod/Que16List.dart",
                      "https://restcountries.eu/rest/v2/all"),
                  ButtonsCode(
                      Que19Local(),
                      "lib/API/SimpleMethod/Que19Local.dart",
                      "User.json (Local)"),
                  Center(child: Text("Map", style: TextStyle(fontSize: 16))),
                  ButtonsCode(Que11(), "lib/API/SimpleMethod/Que11Map.dart",
                      "http://thegrowingdeveloper.org/apiview?id=2\nListViewer"),
                  ButtonsCode(HomePage6(), "lib/API/SimpleMethod/Que06.dart",
                      "https://Swapi.dev/api/people/1"),
                  ButtonsCode(HomePage7(), "lib/API/SimpleMethod/Que07.dart",
                      "https://Swapi.dev/api/starships/9"),
                  ButtonsCode(HomePage3(), "lib/API/SimpleMethod/Que03.dart",
                      "https://Swapi.dev/api/planets/3"),
                  ButtonsCode(HomePage5(), "lib/API/Simplemethod/Que05.dart",
                      "OpenWeather"),
                  ButtonsCode(Que02(), "lib/API/SimpleMethod/Que02.dart",
                      "https://newsapi.org/"),
                  ButtonsCode(HomePage4(), "lib/API/SimpleMethod/Que04.dart",
                      "https://jsonplaceholder.typicode.com/albums/1"),
                  ButtonsCode(Que01(), "lib/API/SimpleMethod/Que01.dart",
                      "https://reqres.in/api/users?page2"),
                  ButtonsCode(Que17(), "lib/API/SimpleMethod/Que17.dart",
                      "https://www.metaweather.com/api/location/28743736/"),
                  ButtonsCode(
                      Que08Local(),
                      "lib/API/SimpleMethod/Que08_LoadLocalJson.dart",
                      "starwars_data.json (Local)"),
                  ButtonsCode(
                      Que18Local(),
                      "lib/API/SimpleMethod/Que18Local.dart",
                      "User.json (Local)"),
                  ButtonsCode(
                      Que10Search(),
                      "lib/API/SimpleMethod/Que10_SearchLocalJson.dart",
                      "rootBundle.loadString, json.decode, \nListViewBuilder Search local Json"),
                  ButtonsCode(
                      Que09(),
                      "lib/API/SimpleMethod/Que09_Localvariable.dart",
                      "List defined in Local variable"),
                  ButtonsCode(
                      Que09a(),
                      "lib/API/SimpleMethod/Que09a_mapLocalVariable.dart",
                      "Map defined in Local variable"),
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
