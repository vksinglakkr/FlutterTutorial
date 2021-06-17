// lib/Assignments\Que01Assignment1.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Assignments/Que05.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Assignment on Container")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(
        children: [
          Container(
              //Lines 29
              margin: EdgeInsets.only(top: 32),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.red],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    spreadRadius: 2,
                    color: Colors.red.withOpacity(0.4),
                    offset: Offset(4, 4),
                  ),
                ],
                borderRadius: BorderRadius.all(Radius.circular(24)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, //Line 50
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            //Lines
                            Icons.label,
                            color: Colors.white,
                            size: 24,
                          ),
                          SizedBox(width: 8), //Lines50
                          Text(
                            'Office',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'avenir'),
                          ),
                        ],
                      ),
                      Switch(
                        //Line 60
                        onChanged: (bool value) {},
                        value: true,
                        activeColor: Colors.white,
                      )
                    ],
                  ),
                  Text("Mon-Fri", style: TextStyle(color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("07:00 AM",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w700)),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 36,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
