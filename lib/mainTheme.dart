import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/HomeScreen.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class MainTheme extends StatefulWidget {
  @override
  _MainThemeState createState() => _MainThemeState();
}

class _MainThemeState extends State<MainTheme> {
  int likeCount = 999;

  // ignore: non_constant_identifier_names
  Color CircleStartColor = Colors.teal;
  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names
  void changeStartColor(Color SelectedClr) =>
      setState(() => CircleStartColor = SelectedClr);

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
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Primary Color:"),
                          ClipOval(
                            child: Container(
                              width: 30,
                              height: 30,
                              color: CircleStartColor,
                            ),
                          ),
                          ColorBtn(CircleStartColor, 1),
                          SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    child: Text('Next',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              HomeScreen(primaryColor: CircleStartColor),
                        ))),
              ],
            )));
  }

  Future<bool> onLikeButtonTapped(bool isLiked) async {
    return !isLiked;
  }
}
