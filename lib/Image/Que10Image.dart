//Image using Container
import 'package:flutter/material.dart';

class Que10Image extends StatelessWidget {
  final urlImage1 = 'assets/images/Kurukshetra.jpg';
  final urlImage2 = 'https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container(decoration..',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Container(decoration..'),
        ),
        body: Column(
          children: [
            Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xff7c94b6),
                  image: DecorationImage(
                      image: NetworkImage(urlImage2), fit: BoxFit.cover),
                  border: Border.all(color: Colors.black, width: 8),
                  borderRadius: BorderRadius.circular(12),
                )),
            SizedBox(
              height: 100.0,
            ),
            Center(
              child: Image(
                image: AssetImage('assets/images/Que10Image.jpg'),
              ),
            ),
            Text("Image/Que10Image.dart")
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
