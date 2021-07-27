// lib/Others/WidgetCommunication/Que07Buttons.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que07Button extends StatefulWidget {
  @override
  _Que07ButtonState createState() => _Que07ButtonState();
}

class _Que07ButtonState extends State<Que07Button> {
  final String video1 = "ubBy_btJtT0"; //Que07

  String text = "Some text here";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('voidCallback\nButtons'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: 20),
          Button(onChanged: (value) {
            setState(() {
              text = value;
            });
          }),
        ]),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}

class Button extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const Button({Key key, this.onChanged}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          MaterialButton(
            onPressed: () {
              onChanged("Button1 Pressed");
            },
            child: Text("Button 1"),
            color: Colors.pink,
          ),
          MaterialButton(
            onPressed: () {
              onChanged("Button2 Pressed");
            },
            child: Text("Button 2"),
            color: Colors.pink,
          ),
          MaterialButton(
            onPressed: () {
              onChanged("Button3 Pressed");
            },
            child: Text("Button 3"),
            color: Colors.pink,
          ),
        ],
      ),
    );
  }
}
