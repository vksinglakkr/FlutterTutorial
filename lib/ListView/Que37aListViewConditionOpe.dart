import 'package:flutter/material.dart';

class Que37a extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que37a> {
  List<String> names = [
    'Bharti',
    'Rajiv',
    'Aashish',
    'Athar Ali',
    'Hema',
    'Mohit',
    'Arun',
    'Ram'
  ];
  final List<int> msgCount = [2, 0, 10, 6, 52, 4, 0, 2, 67];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conditional Operator if-else'),
      ),
      body: Column(children: <Widget>[
        Container(
            height: 350,
            child: ListView.builder(
                padding: const EdgeInsets.all(5),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 38,
                    margin: EdgeInsets.all(2),
                    // color: msgCount[index] >= 10
                    //     ? Colors.blue[400]
                    //     : msgCount[index] > 3
                    //         ? Colors.blue[100]
                    //         : Colors.grey,
                    color: index % 2 == 0 ? Colors.yellow : Colors.red,
                    child: Center(
                        child: Text(
                      '${names[index]} (${msgCount[index]})',
                      style: TextStyle(fontSize: 16),
                    )),
                  );
                })),
        SizedBox(height: 5),
        Center(
          child: Image(
            image: AssetImage('assets/images/ListView/Que37a.png'),
          ),
        ),
        Center(child: Text("ListView/Que37aListViewConditionOpe.dart"))
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