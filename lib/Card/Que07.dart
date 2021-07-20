import 'package:flutter/material.dart';

//https://www.kindacode.com/article/flutter-rounded-card/
//Que07 Card
class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('child: SizedBox'),
        ),
        body: Center(
          child: Column(
            children: [
              Card(
                  elevation: 20,
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: SizedBox(
                    width: 200,
                    height: 150,
                    child: Center(
                        child: Text('YoYo', style: TextStyle(fontSize: 50))),
                  )),
              Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: Container(
                      width: 150,
                      height: 150,
                      decoration: BoxDecoration(
                          // The child of a round Card should be in round shape
                          shape: BoxShape.circle,
                          color: Colors.blue[500]))),
              Card(
                  elevation: 30,
                  color: Colors.red,
                  shape: CircleBorder(),
                  child: Container(
                      width: 150, height: 150, color: Colors.blue[300])),
            ],
          ),
        ));
  }
}
