import 'package:flutter/material.dart';

class Que06Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FadeInImage.assetNetwork()',
      home: Scaffold(
        appBar: AppBar(
          title: Text('FadeInImage.assetNetwork()'),
        ),
        body: Column(
          children: [
            Center(
              child: FadeInImage.assetNetwork(
                placeholder: 'assets/images/loading.gif',
                image: 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg',
              ),
            ),
            Image(
              image: AssetImage('assets/images/loading.gif'),
              height: 100,
              fit: BoxFit.fill,
            ),
            Text("Image/Que06Image.dart"),
            SizedBox(height: 10.0),
            Image(
              image: AssetImage('assets/images/Que06Image.jpg'),
              height: 100,
              fit: BoxFit.fill,
            ),
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
