// ../lib/API/SimpleMethod/Que09_Load_LocalVariableJson.dart
import 'dart:convert';

import 'package:flutter/material.dart';

dynamic localvarJson = [
  {
    "name": "Luke Skywalker",
    "height": "172",
    "mass": "77",
    "hair_color": "blond",
    "skin_color": "fair",
    "eye_color": "blue",
    "birth_year": "19BBY",
    "gender": "male"
  },
  {
    "name": "C-3PO",
    "height": "167",
    "mass": "75",
    "hair_color": "n/a",
    "skin_color": "gold",
    "eye_color": "yellow",
    "birth_year": "112BBY",
    "gender": "n/a"
  },
  {
    "name": "R2-D2",
    "height": "96",
    "mass": "32",
    "hair_color": "n/a",
    "skin_color": "white, blue",
    "eye_color": "red",
    "birth_year": "33BBY",
    "gender": "n/a"
  },
  {
    "name": "Darth Vader",
    "height": "202",
    "mass": "136",
    "hair_color": "none",
    "skin_color": "white",
    "eye_color": "yellow",
    "birth_year": "41.9BBY",
    "gender": "male"
  },
  {
    "name": "Leia Organa",
    "height": "150",
    "mass": "49",
    "hair_color": "brown",
    "skin_color": "light",
    "eye_color": "brown",
    "birth_year": "19BBY",
    "gender": "female"
  },
  {
    "name": "Owen Lars",
    "height": "178",
    "mass": "120",
    "hair_color": "brown, grey",
    "skin_color": "light",
    "eye_color": "blue",
    "birth_year": "52BBY",
    "gender": "male"
  },
  {
    "name": "Beru Whitesun lars",
    "height": "165",
    "mass": "75",
    "hair_color": "brown",
    "skin_color": "light",
    "eye_color": "blue",
    "birth_year": "47BBY",
    "gender": "female"
  },
  {
    "name": "R5-D4",
    "height": "97",
    "mass": "32",
    "hair_color": "n/a",
    "skin_color": "white, red",
    "eye_color": "red",
    "birth_year": "unknown",
    "gender": "n/a"
  },
  {
    "name": "Biggs Darklighter",
    "height": "183",
    "mass": "84",
    "hair_color": "black",
    "skin_color": "light",
    "eye_color": "brown",
    "birth_year": "24BBY",
    "gender": "male"
  },
  {
    "name": "Obi-Wan Kenobi",
    "height": "182",
    "mass": "77",
    "hair_color": "auburn, white",
    "skin_color": "fair",
    "eye_color": "blue-gray",
    "birth_year": "57BBY",
    "gender": "male"
  }
];

class Que09Local extends StatefulWidget {
  @override
  Que09LocalState createState() => Que09LocalState();
}

class Que09LocalState extends State<Que09Local> {
  List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Error! Load local JSON file"),
        ),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                // TODO
                future: DefaultAssetBundle.of(context)
                    .loadString(localvarJson.toString()),
//                    .loadString('assets/localJson/starwars_data.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var convertedJsonData = json.decode(snapshot.data.toString());

                  return ListView.builder(
                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text("Name: " + convertedJsonData[index]['name']),
                            Text("Height: " +
                                convertedJsonData[index]['height']),
                            Text("Mass: " + convertedJsonData[index]['mass']),
                            Text("Hair Color: " +
                                convertedJsonData[index]['hair_color']),
                            Text("Skin Color: " +
                                convertedJsonData[index]['skin_color']),
                            Text("Eye Color: " +
                                convertedJsonData[index]['eye_color']),
                            Text("Birth Year: " +
                                convertedJsonData[index]['birth_year']),
                            Text(
                                "Gender: " + convertedJsonData[index]['gender'])
                          ],
                        ),
                      );
                    },
                    itemCount: convertedJsonData == null
                        ? 0
                        : convertedJsonData.length,
                  );
                }),
          ),
        ));
  }
}
