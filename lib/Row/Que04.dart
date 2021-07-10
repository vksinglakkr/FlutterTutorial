import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Overflow (Text) Ex.2")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Spacer(flex: 1),
          Row(
            children: [
              RandomContainer(
                  child: Text("Widgets are wrapped in Row",
                      style: TextStyle(fontSize: 14.0))),
              RandomContainer(
                  child: Text(
                      "Normally when we want to layout multiple widgets horizontally or vertically we use a row or column. But if there is not enough room the content gets clipped and you get the yellow and black overflow warning.",
                      style: TextStyle(fontSize: 12.0))),
            ],
          ),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Wrap(
            children: [
              RandomContainer(
                  child: Text(
                      "To fix overflow, use a Wrap widget instead of a Row.",
                      style: TextStyle(fontSize: 14.0))),
              RandomContainer(
                  child: Text(
                      "Normally when we want to layout multiple widgets horizontally or vertically we use a row or column. But if there is not enough room the content gets clipped and you get the yellow and black overflow warning.\nThe default is to wrap horizontally in rows, but if you want to wrap vertically, you can set the direction.",
                      style: TextStyle(fontSize: 10.0))),
            ],
          ),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Row(
            children: [
              Expanded(
                child: Text(
                  "To fix overflow, use a Expanded widget",
                  //                        style: Theme.of(context).textTheme.headline4),
                ),
              ),
              Expanded(
                  child: Text(
                      "Normally when we want to layout multiple widgets horizontally or vertically we use a row or column. But if there is not enough room the content gets clipped and you get the yellow and black overflow warning.\nThe default is to wrap horizontally in rows, but if you want to wrap vertically, you can set the direction.",
                      style: TextStyle(fontSize: 10.0))),
            ],
          ),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Vertically Scrollable",
                  //                        style: Theme.of(context).textTheme.headline4),
                ),
              ),
              Expanded(
                child: RandomContainer(
                  height: 60,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                          "Normally when we want to layout multiple widgets horizontally or vertically we use a row or column. But if there is not enough room the content gets clipped and you get the yellow and black overflow warning.\nThe default is to wrap horizontally in rows, but if you want to wrap vertically, you can set the direction.",
                          style: TextStyle(fontSize: 10.0))),
                ),
              ),
            ],
          ),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Horizontally Scrollable",
                  //                        style: Theme.of(context).textTheme.headline4),
                ),
              ),
              Expanded(
                child: RandomContainer(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Text(
                          "Normally when we want to layout multiple widgets horizontally or vertically we use a row or column. But if there is not enough room the content gets clipped and you get the yellow and black overflow warning.\nThe default is to wrap horizontally in rows, but if you want to wrap vertically, you can set the direction.",
                          style: TextStyle(fontSize: 10.0))),
                ),
              ),
            ],
          ),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Row(
            children: [
              Expanded(
                child: Text(
                  "maxLines: 4,",
                  //                        style: Theme.of(context).textTheme.headline4),
                ),
              ),
              Expanded(
                child: RandomContainer(
                  child: Text(
                      "Normally when we want to layout multiple widgets horizontally or vertically we use a row or column. But if there is not enough room the content gets clipped and you get the yellow and black overflow warning.\nThe default is to wrap horizontally in rows, but if you want to wrap vertically, you can set the direction.",
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10.0)),
                ),
              ),
            ],
          ),
          Spacer(flex: 1),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
