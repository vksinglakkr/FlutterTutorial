import 'package:flutter/material.dart';

class Que97 extends StatefulWidget {
  @override
  _Que97State createState() => _Que97State();
}

class _Que97State extends State<Que97> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Container App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Container App Bar'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomContainer(
                color1: Colors.deepOrange,
                color2: Colors.yellow,
                containerNumber: '1',
                containerHeight: 300.0,
              ),
              CustomContainer(
                color1: Colors.blue,
                color2: Colors.red,
                containerNumber: '2',
                containerHeight: 300.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  final String containerNumber;
  final double containerHeight;
  CustomContainer(
      {this.color1, this.color2, this.containerHeight, this.containerNumber});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      height: containerHeight,
      color: color1,
      child: Container(
        color: color2,
        child: Center(
          child: Text(
            "Container $containerNumber",
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
