import 'package:flutter/material.dart';

class Que15 extends StatelessWidget {
  final items = List<String>.generate(100, (index) => "Item $index");
  //final must be written here
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Generate List'),
        ),
        body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: items.length,
            itemBuilder: (context, index) {
              // return Column(children: [Text(items[index])]
              return ListTile(title: Text(items[index])
                  //return ListTile(title: Text('$items[index]')
                  //return Text(items[index]);
                  );
            }),
        floatingActionButton: FloatingActionButton(
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}
