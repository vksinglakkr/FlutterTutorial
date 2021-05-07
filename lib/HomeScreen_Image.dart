import 'package:flutter/material.dart';
import 'Image/Que00Image.dart';
import 'Image/Que01Image.dart';
import 'Image/Que02Image.dart';
import 'Image/Que03Image.dart';
import 'Image/Que04Image.dart';
import 'Image/Que05Image.dart';
import 'Image/Que06Image.dart';
import 'Image/Que07Image.dart';
import 'Image/Que08Image.dart';
import 'Image/Que09Image.dart';
import 'Image/Que10Image.dart';
import 'Image/Clipping/Que01Clip.dart';
import 'Image/Clipping/Que04Clip.dart';
import 'Image/Clipping/Que05Clip.dart';
import 'Image/Clipping/Que06Clip.dart';
import 'Image/Clipping/Que07Clip.dart';
import 'Image/Clipping/Que08Clip.dart';
import 'Image/Clipping/Que09Clip.dart';
import 'Image/Clipping/Que10Clip.dart';
import 'ListView/Que01ListView.dart';
import 'ListView/Que02ListView.dart';
import 'ListView/Que03ListView.dart';

class HomeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Builder(
        builder: (context) => Column(
          children: [
            Center(
              child: RaisedButton(
                  child: Text('ListView Question 1'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Que01ListView()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('ListView/Column/Row'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Que02ListView()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('ListView/Column/Row'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Que03ListView()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('General Notes'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que00Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('Image(image: AssetImage())'),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que01Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('Image.asset())'),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que02Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('Image.network()'),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que03Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('Image(image:NetworkImage())'),
                  color: Colors.orangeAccent,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que04Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('fit: BoxFit.cover'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que05Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('FadeInImage.assetNetwork()'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que06Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('repeat: ImageRepeat.repeat'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que07Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('final urlImage1 = ""'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que08Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('CircleAvatar'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que09Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  child: Text('Container(decoration..'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que10Image()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text('ClipRRect/BorderRadius'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que01Clip()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text('ClipRRect/BorderRadius/BoxFit'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que07Clip()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text('ClipOval..ImageRepeat'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que04Clip()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text('ClipOval/Align'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que05Clip()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text('FadeInImage.assetNetwork()'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que06Clip()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text('ClipPath Assignment1'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que08Clip()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text('ClipPath Assignment2'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que09Clip()));
                  }),
            ),
            Center(
              child: RaisedButton(
                  color: Colors.pinkAccent,
                  child: Text('ClipPath Assignment3'),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Que10Clip()));
                  }),
            ),
            Text("END",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
