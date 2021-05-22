import 'package:flutter/material.dart';

class Que30a extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que30a> {
  List names = [
    'Bharti',
    'Rajiv',
    'Aashish',
    'Athar Ali',
    'Hema',
    'Mohit',
    'Arun',
    'Ram'
  ];
  final List<int> colorCodes = [100, 200, 300, 400, 500, 600, 700, 800];

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
                  return Container(
                    height: 50,
                    margin: EdgeInsets.all(2),
                    color: Colors.blue[colorCodes[index]],
                    child: Center(
                        child: Text(
                      '${names[index]}',
                      style: TextStyle(fontSize: 18),
                    )),
                  );
                })),
        Center(child: Text("ListView/Que30aBuilderListView.dart")),
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
