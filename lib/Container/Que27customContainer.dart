import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Extract Method',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Extract Method Demo'),
        ),
        body: Column(
          children: [
            customContainer(),
            customContainer(),
            customContainer(),
            customContainer(),
            customContainer(),
          ],
        ),
      ),
    );
  }

  Center customContainer() {
    return Center(
      child: Container(
        child: Text('Hello World'),
      ),
    );
  }
}

//Note1: Right Click on Center, choose Extract Method
//Note2: It will ask the name of the method.
//Note3: Here we have given the name customContainer
//Note4: It has generated customerContainer of type Center
