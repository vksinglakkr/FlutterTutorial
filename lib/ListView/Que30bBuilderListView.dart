import 'package:flutter/material.dart';

class Que30b extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que30b> {
  final List names = ['Bike', 'Boat', 'Bus'];
  final iconsVar = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder - 2 List'),
      ),
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
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}
