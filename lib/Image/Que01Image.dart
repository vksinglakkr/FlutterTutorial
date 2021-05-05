import 'package:flutter/material.dart';

class Que01Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image(image: AssetImage()) App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image(image: AssetImage()) Demo'),
        ),
        body: Column(
          children: [
            //Image.network('https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg'),
            //Image.asset('assets/images/Kurukshetra.jpg'),
            //Image(image:NetworkImage('https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg'),),
            Image(
              image: AssetImage('assets/images/Kurukshetra.jpg'),
            ),

            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/Que01aImage.jpg'),
              ),
            ),
            Text("Image/Que01Image.dart")
          ],
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Go Back",
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.first_page),
        ),
      ),
    );
  }
}
