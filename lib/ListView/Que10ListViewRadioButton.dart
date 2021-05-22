import 'package:flutter/material.dart';

class Que10 extends StatefulWidget {
  @override
  _Que10State createState() => _Que10State();
}

class _Que10State extends State<Que10> {
  var groupValue;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Radio Button - Demo'),
        ),
        body: Column(
          children: [
            Container(
              height: 180,
              child: ListView(
                children: [
                  ListTile(
                    title: Text('List item 1'),
                    subtitle: Text('Subtitle Item 1'),
                    leading: Icon(Icons.label),
                    trailing: Radio(
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (value) {
                        // Update value.
                      },
                    ),
                  ),
                  ListTile(
                    title: Text('List item 2'),
                    subtitle: Text('Subtitle item 2'),
                    leading: Icon(Icons.label),
                    trailing: Radio(
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (value) {
                        // Update value.
                      },
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que10.png'),
              ),
            ),
            Center(child: Text("ListView/Que10ListViewRadioButton.dart"))
          ],
        ),
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
