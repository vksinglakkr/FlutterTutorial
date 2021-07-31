//Arun disabledColor, splashColor, iconSize, padding, highlightColor
import 'package:flutter/material.dart';

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IconButton'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
                color: Colors.amber,
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "required property: icon and onPressed\nExtra package: No",
                )),
            Spacer(flex: 1),
            Container(
              height: 200,
              width: 200,
              color: Colors.grey[300],
              child: IconButton(
                padding: EdgeInsets.all(10.0),
                icon: Icon(Icons.sentiment_neutral),
                iconSize: 100.0,
                alignment: Alignment.topLeft, //default Alignment.center
                color: Colors.blue, //default black
                splashColor: Colors.red,
                highlightColor: Colors.green,
                onPressed: () {},
                disabledColor: Colors.teal,
                //onPressed: null),
              ),
            ),
            Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
