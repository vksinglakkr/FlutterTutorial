//lib/Others/WidgetCommunication/Que08ChangeAppBarTitle.dart
import 'package:flutter/material.dart';

class Que08AppbarTitle extends StatefulWidget {
  _Que08AppbarTitleState createState() => _Que08AppbarTitleState();
}

class _Que08AppbarTitleState extends State<Que08AppbarTitle> {
  String title = "My favourite fruit is ";
  String fruit = 'Unknown';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title + fruit),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  fruit = "Apples";
                });
              },
              child: Text("Apples"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  fruit = "Oranges";
                });
              },
              child: Text("Oranges"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  fruit = "Grapes";
                });
              },
              child: Text("Grapes"),
            ),
          ],
        ),
      ),
    );
  }
}
