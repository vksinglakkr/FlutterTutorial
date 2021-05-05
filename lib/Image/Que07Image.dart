import 'package:flutter/material.dart';

class Que07Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Que07Image.dart',
      home: Scaffold(
        appBar: AppBar(
          title: Text('repeat: ImageRepeat.repeat'),
        ),
        body: Column(
          children: [
            Image.network(
                "https://i.ytimg.com/vi/YlqkDY0NqcQ/maxresdefault.jpg",
                repeat: ImageRepeat.repeat,
                height: 470),
            SizedBox(height: 5),
            Text("Image/Que07Image.dart")
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

//Note: https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html
