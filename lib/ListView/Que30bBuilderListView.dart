// lib\ListView\Que30bBuilderListView.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que30b11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que30b11> {
  final List names = ['Bike', 'Boat', 'Bus'];
  final iconsVar = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus
  ];
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que30b.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder - 2 List'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(children: <Widget>[
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                      leading: Icon(iconsVar[index]),
                      title: Text(
                        '${names[index]}',
                        style: TextStyle(fontSize: 18),
                      ));
                })),
        Center(child: Text("ListView/Que30bBuilderListView.dart")),
      ]),
      floatingActionButton: WidgetFab(),
    );
  }
}
