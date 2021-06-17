// lib/Buttons/ElevatedButton/Que07CustomButton.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que08Rounded11 extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Que08Rounded11> {
  final String url1 =
      "https://www.kindacode.com/article/flutter-rounded-button/"; //final
  final String image1 = "";
  final String video1 = "";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Different approaches \nto make rounded buttons'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Using ElevatedButton + RoundedRectangleBorder'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                child: Text('Button'),
                onPressed: () {},
              ),
              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Using ElevatedButton + StadiumBorder'),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                ),
                child: Text('Pill Button'),
                onPressed: () {},
              ),
              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Using ClipRRect'),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  child: Text("CLICK ME"),
                ),
              ),
              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Using InkWell + Material'),
              Material(
                color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  hoverColor: Colors.orange,
                  splashColor: Colors.red,
                  focusColor: Colors.yellow,
                  highlightColor: Colors.purple,
                  onTap: () {},
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    width: 150,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    alignment: Alignment.center,
                    child: Text('Button'),
                  ),
                ),
              ),
              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Using OutlinedButton + RoundedRectangleBorder'),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                    elevation: 6,
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                child: Text(
                  'Button',
                ),
                onPressed: () {},
              ),
              Divider(indent: 16, endIndent: 16, thickness: 3),
              Text('Using GestureDetector (No ripple Effect)'),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 100,
                  height: 20,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[200],
                  ),
                  child: Text('Button'),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
