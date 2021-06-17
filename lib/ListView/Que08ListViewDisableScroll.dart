// lib/ListView\Que08ListViewDisableScroll.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0811 extends StatelessWidget {
  final String url1 = "";
  final String image1 = "assets/help/ListView/Que08.png";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Disable Scroll - Demo")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 100,
              child: ListView(
                physics: NeverScrollableScrollPhysics(),
                //  physics: ClampingScrollPhysics(),

                scrollDirection: Axis.horizontal,
                //scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    width: 130,
                    color: Colors.purple[600],
                    child: const Center(
                        child: Text(
                      'Item 1',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 130,
                    color: Colors.purple[500],
                    child: const Center(
                        child: Text(
                      'Item 2',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 130,
                    color: Colors.purple[400],
                    child: const Center(
                        child: Text(
                      'Item 3',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    width: 130,
                    color: Colors.purple[300],
                    child: const Center(
                        child: Text(
                      'Item 4',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que08.png'),
              ),
            ),
            Center(child: Text("ListView/Que08ListViewDisableScroll.dart"))
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
