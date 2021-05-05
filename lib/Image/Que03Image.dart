import 'package:flutter/material.dart';

class Que03Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image.network() App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image.network() Demo'),
        ),
        body: Column(
          children: [
            Image.network(
              'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg',
            ),

            //Image.asset('assets/images/Kurukshetra.jpg'),
            //Image(image:NetworkImage('https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg'),),
            //Image(image: AssetImage('assets/images/Kurukshetra.jpg')),
            SizedBox(height: 50.0),
            Image(
              image: AssetImage('assets/images/Que03Image.jpg'),
              height: 100,
              fit: BoxFit.fill,
            ),
            Text("Image/Que03Image.dart")
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
