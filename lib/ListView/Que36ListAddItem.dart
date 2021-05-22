import 'package:flutter/material.dart';

class Que36 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que36> {
  final List<String> names = <String>[
    'Bharti',
    'Rajiv',
    'Aashish',
    'Athar Ali',
    'Hema',
    'Mohit',
    'Arun',
    'Ram'
  ];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];

  TextEditingController nameController = TextEditingController();

  void addItemToList() {
    setState(() {
      names.insert(0, nameController.text);
      msgCount.insert(0, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Item in List'),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Contact Name',
            ),
          ),
        ),
        ElevatedButton(
          child: Text('Add'),
          onPressed: () {
            addItemToList();
          },
        ),
        Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 35,
                    margin: EdgeInsets.all(2),
                    color: msgCount[index] >= 10
                        ? Colors.blue[400]
                        : msgCount[index] > 3
                            ? Colors.blue[100]
                            : Colors.grey,
                    child: Center(
                        child: Text(
                      '${names[index]} (${msgCount[index]})',
                      style: TextStyle(fontSize: 18),
                    )),
                  );
                })),
        SizedBox(height: 5),
        Center(child: Text("ListView/Que36ListAddItem.dart"))
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
