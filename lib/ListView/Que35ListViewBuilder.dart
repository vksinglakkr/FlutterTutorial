// lib\ListView\Que35ListViewBuilder.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que3511 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que35.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder without List declaration',
            style: TextStyle(
              fontSize: 16,
            )),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: ClampingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                child: Text("Item $index"),
                padding: EdgeInsets.only(
                    left: 20.0, right: 8.0, top: 3.0, bottom: 3.0),
              );
            },
          ),
          SizedBox(height: 5),
          Center(child: Text("shrinkWrap: true must be set for this.")),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que35.png'),
            ),
          ),
          SizedBox(height: 5),
          Center(child: Text("ListView/Que35ListViewBuilder.dart"))
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
