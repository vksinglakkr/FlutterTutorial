//store image in var
import 'package:flutter/material.dart';

class Que08Image extends StatelessWidget {
  final urlImage1 = 'assets/images/Kurukshetra.jpg';
  final urlImage2 = 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'final urlImage1 = ""',
      home: Scaffold(
        appBar: AppBar(
          title: Text('final urlImage1 = ""'),
        ),
        body: Column(
          children: [
            //Image.network(urlImage2),
            //Image.asset(urlImage1),
            //Image(image:NetworkImage(urlImage2),),
            Image(image: AssetImage(urlImage1)),

            SizedBox(
              height: 100.0,
            ),
            Text("final urlImage1 = 'assets/images/Kurukshetra.jpg';"),
            Text("final urlImage2 = 'https://i.ytimg.com/maxresdefault.jpg';"),
            Center(
              child: Image(
                image: AssetImage('assets/images/Que08Image.jpg'),
              ),
            ),
            Text("Image/Que08Image.dart")
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
