import 'package:flutter/material.dart';

class Que01Sized extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: SizedBox(
            height: 100.0,
            width: 100,
            child: Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg"),
          ),
        ),
      ),
    );
  }
}

//Note: First show without width, Height and Size
//Note: Show with size: 200
//Note: Remove size enter Height:200, width:200
//Note: If we have entered width, height and Size What We get Ans It will see only width & height. Ignore Size
