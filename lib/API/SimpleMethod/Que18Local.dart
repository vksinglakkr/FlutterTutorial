// ../lib/API/SimpleMethod/Que08_LoadLocalJson.dart
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que18Local extends StatefulWidget {
  @override
  Que18LocalState createState() => Que18LocalState();
}

class Que18LocalState extends State<Que18Local> {
  final String image1 = "assets/help/API/response.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Load local JSON file"),
        ),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('assets/localJson/User.json'),
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
                            Text("Number: " +
                                convertedJsonData[index]['number']),
                            Text("eMail: " + convertedJsonData[index]['email']),
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
        ),      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
);
  }
}
