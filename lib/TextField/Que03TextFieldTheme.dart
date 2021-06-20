// lib/Divider\Que01DividerTheme2.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que03Text11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Set Borderproperties \nusing ThemeData',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(width: 5.0, color: Colors.pink))),
      ),
      home: MyHomePage(title: 'Set properties \nusing ThemeData'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color bulbColor = Colors.black;
  final String url1 =
      "https://stackoverflow.com/questions/53531675/how-to-apply-theme-on-materialbutton-or-raisedbutton"; //final
  final String image1 = "";
  final String video1 = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar(widget.title)),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
//                    border: OutlineInputBorder(
//                      borderRadius: BorderRadius.all(Radius.circular(40.0)),
//                      borderSide: BorderSide(width: 1.0),
//                        ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.redAccent),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.orangeAccent),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: 'Border using Theme',
                    prefixIcon: const Icon(
                      Icons.person,
                      color: Colors.green,
                    ),
                  ),
                ),
                Text('TextField for Dark Mode'),
                Container(
                  color: Colors.black,
                  margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                  child: Theme(
                    data: ThemeData(
                      hintColor: Colors.white,
                      primaryColor: Colors.white,
                      primaryColorDark: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        onChanged: null,
//            controller: editingController,
                        decoration: InputDecoration(
                            labelText: "Container/Theme/ThemeData/Padding",
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0))),
                            border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 0.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25.0)))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
