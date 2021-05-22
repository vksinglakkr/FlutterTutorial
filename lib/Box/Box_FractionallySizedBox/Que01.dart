import 'package:flutter/material.dart';

class Que01Fraction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FractionallySizedBox',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FractionallySizedBox Demo'),
        ),
        body: Column(
          children: [
            Container(
              height: 130,
              width: double.infinity,
              color: Colors.green,
              child: FractionallySizedBox(
                heightFactor: 0.32,
                child: ElevatedButton(
                    onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                    child: Text('heightFactor')),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
              child: FractionallySizedBox(
                widthFactor: 0.50,
                child: ElevatedButton(
                    onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                    child: Text('widthFactor')),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
              child: FractionallySizedBox(
                widthFactor: 0.50,
                heightFactor: 0.32,
                child: ElevatedButton(
                    onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                    child: Text('Both')),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.green,
              child: FractionallySizedBox(
                widthFactor: 0.50,
                heightFactor: 0.32,
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                    onPressed: () {},
//                    color: Colors.black,
//                    textColor: Colors.white,
                    child: Text('Alignment')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
