import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/HomeScreen.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_tutorial/splashscreen.dart';

class MainTheme extends StatefulWidget {
  @override
  _MainThemeState createState() => _MainThemeState();
}

class _MainThemeState extends State<MainTheme> {
  int likeCount = 999;
  int _radioShowNumberValue = 0;
  void _radioNumberShowChange(int value) {
    setState(() {
      _radioShowNumberValue = value;
      if (_radioShowNumberValue == 0) {
//        ThemeData(scaffoldBackgroundColor: Colors.white);
        ThemeData(brightness: Brightness.light);
      } else if (_radioShowNumberValue == 1) {
//        ThemeData(scaffoldBackgroundColor: Colors.grey.shade900);
//        Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.grey.shade900);
        ThemeData(brightness: Brightness.dark);
      }
    });
  }

  // ignore: non_constant_identifier_names
  Color CircleStartColor = Colors.deepPurple;
  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names
  Color CircleBtnColor = Colors.deepPurple;
  // ignore: non_constant_identifier_names
  void changeStartColor(Color SelectedClr) =>
      setState(() => CircleStartColor = SelectedClr);
  // ignore: non_constant_identifier_names
  void changeBtnColor(Color SelectedClr) =>
      setState(() => CircleBtnColor = SelectedClr);

  // ignore: non_constant_identifier_names
  IconButton ColorBtn(Color Clr, int index) {
    return IconButton(
      icon: Icon(Icons.edit),
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                title: Text('Select a color'),
                content: Column(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: BlockPicker(
                          pickerColor: Clr,
                          // ignore: non_constant_identifier_names
                          onColorChanged: (SlectedColor) {
                            if (index == 1) {
                              changeStartColor(SlectedColor);
                            } else if (index == 2) {
                              changeBtnColor(SlectedColor);
                            }
                          }),
                    ),
                    ElevatedButton(
                      child: Text("Close"),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    )
                  ],
                ));
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Set Preferences"),
            ),
            body: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Color of App:     ",
                              style: TextStyle(fontSize: 18)),
                          ClipOval(
                            child: Container(
                              width: 30,
                              height: 30,
                              color: CircleStartColor,
                            ),
                          ),
                          ColorBtn(CircleStartColor, 1),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Color of Buttons:   ",
                              style: TextStyle(fontSize: 18)),
                          ClipOval(
                            child: Container(
                              width: 30,
                              height: 30,
                              color: CircleBtnColor,
                            ),
                          ),
                          ColorBtn(CircleBtnColor, 2),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Dark/Light Mode",
                              style: TextStyle(fontSize: 18)),
                          new Radio(
                            value: 0,
                            groupValue: _radioShowNumberValue,
                            onChanged: _radioNumberShowChange,
                          ),
                          new Text('Light'),
                          new Radio(
                            value: 1,
                            groupValue: _radioShowNumberValue,
                            onChanged: _radioNumberShowChange,
                          ),
                          new Text('Dark'),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                        child: Text('Change',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => Splash(
                                primaryColor: CircleStartColor,
                                darkMode: _radioShowNumberValue,
                                btnColor: CircleBtnColor,
                              ),
                            ))),
                    ElevatedButton(
                        child: Text('Cancel',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => HomeScreen(),
                            ))),
                  ],
                ),
              ],
            )));
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    return !isLiked;
  }
}
