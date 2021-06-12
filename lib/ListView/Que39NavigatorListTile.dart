// lib\ListView\Que39NavigatorListTile.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';

class Que3911 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que39.png";
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
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text('the List Item #$index'),
                subtitle: Text('The SubTitle'),
                leading: Icon(Icons.thumb_up),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  // Navigator.push(
                  // context,
                  // MaterialPageRoute(
                  // builder: (context) => DetailsPage(index)));
                },
              );
            },
          ),
          SizedBox(height: 5),
          Center(child: Text("ListView/Que39NavigatorListTile.dart"))
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
