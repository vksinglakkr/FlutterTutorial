// lib/ListView\Que00Issueof_final.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

//if number of class are more than 1 then we have two ways to declare List
//a) List may be declared outside class with/without mentioning final
//b) if we declare List inside class then we have to write final word.

//if we have only one class then we may either write final or not, no issue.

//---------------------------------------------------------------------------

// word List may also be omitted but then we have to write the word final
// word <String> may also be omitted if all the elements are string.

//List course = ["c", 1, "c++", "java", "kotlin", "objective c", "swift", "php"];
//final course = [2, 3, 4, 5, 6, 7, 1];
//course = [2, 3, 4, 5, 6, 7, 1];

// we have to write List before that which we will use for itemCount.

// best practice always write final then <String> or <int> then variable name
final List<String> course = <String>[
  "c",
  "c++",
  "java",
  "kotlin",
  "objective c",
  "swift",
  "php"
];

class Que0011 extends StatefulWidget {
  @override
  _Que0011State createState() => _Que0011State();
}

class _Que0011State extends State<Que0011> {
  final String url1 =
      "https://www.developerlibs.com/2019/08/flutter-draw-custom-shaps-clip-path.html";
  final String image1 = "assets/help/ListView/Que001.png";
  final String video1 = "JDDoN2THwug";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Generate with List<String>")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Container(
            color: Colors.white10,
            padding: EdgeInsets.all(16.0),
            child: ListView.builder(
              itemCount: course.length,
              itemBuilder: (context, element) {
                return Padding(
                    padding: EdgeInsets.only(bottom: 16.0),
                    child: Card(
                      color: Colors.cyan[100],
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 24.0, horizontal: 16.0),
                        child: Text(
                          course[element],
                          style: TextStyle(
                            fontSize: 18.0,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ));
              },
            )),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
