import 'package:flutter/material.dart';

class Que14a extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que14a> {
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
        title: Text('ListView.separated'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: names.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 30,
                margin: EdgeInsets.all(2),
                color: Colors.blue[colorCodes[index]],
                child: Center(
                  child: Text(
                    '${names[index]}',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => Divider(
              thickness: 5,
              color: Colors.red,
            ),
          )),
          SizedBox(
            height: 2.0,
          ),
          //  Center(
          //    child: Image(
          //      image: AssetImage('assets/images/ListView/Que07.png'),
          //    ),
          //  ),
          Center(child: Text("ListView/Que14aListViewSeperated.dart"))
        ],
      ),
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
