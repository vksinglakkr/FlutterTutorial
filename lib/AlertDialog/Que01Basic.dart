//    lib/AlertDialog\Que01Basic.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Diagram/PageShowImage.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

Color startColor = Colors.green;
bool boolVal1 = false;
bool boolVal2 = false;

class Que01Alert11 extends StatefulWidget {
  @override
  _Que01Alert11State createState() => _Que01Alert11State();
}

class _Que01Alert11State extends State<Que01Alert11> {
  final String image1 = "assets/help/AlertDialog/showDialog.jpg";

  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(title: WidgetAppBar("Basic Code \nAlert Dialog Box")),

      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              child: Text('Alert Dialog'),
              onPressed: () {
                _showDialog(context);
              },
            ),
          ),
        ],
      ),
      //floatingActionButton: WidgetFab(),
      bottomNavigationBar: _getBottomBar(),
    ));
  }

  Widget _getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: Theme.of(context).primaryColorLight,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustColor(
              propText: "   backgroundColor:",
              startColor: startColor,
              onValueChange: (value) {
                setState(() {
                  startColor = value;
                });
              },
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PageShowImage(
                            text1: "backgroundColor:",
                            image1: "assets/help/AlertDialog/Que05.png"),
                      ));
                },
                child: Icon(Icons.info)),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('   barrierDismissible:'),
              Radio(
                  value: true,
                  groupValue: boolVal1,
                  onChanged: (bool value) {
                    setState(() {
                      boolVal1 = value;
                    });
                  }),
              Text('true'),
              Radio(
                  value: false,
                  groupValue: boolVal1,
                  onChanged: (bool value) {
                    setState(() {
                      boolVal1 = value;
                    });
                  }),
              Text('false'),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageShowImage(
                              text1: "barrierDismissible:",
                              image1: "assets/help/AlertDialog/Que03.png"),
                        ));
                  },
                  child: Icon(Icons.info))
            ],
          ),
          boolVal1
              ? Text(" Close on tap outside")
              : Text("Don't Close on tap outside"),
          Row(children: [
            Text('   shape:'),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Radio(
                  value: true,
                  groupValue: boolVal2,
                  onChanged: (bool value) {
                    setState(() {
                      boolVal2 = value;
                    });
                  }),
              Text(
                'CircleBorder()',
                style: TextStyle(fontSize: 12),
              ),
              Radio(
                  value: false,
                  groupValue: boolVal2,
                  onChanged: (bool value) {
                    setState(() {
                      boolVal2 = value;
                    });
                  }),
              Text(
                'RoundedRectangleBorder()',
                style: TextStyle(fontSize: 12),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PageShowImage(
                              text1: "shape:",
                              image1: "assets/help/AlertDialog/Que02.png"),
                        ));
                  },
                  child: Icon(Icons.info))
            ],
          ),
          boolVal2 ? Text(" CircleBorder()") : Text("RoundedRectangleBorder()"),
        ]),
      ),
    );
  }
}

void _showDialog(
  BuildContext context,
) {
  showDialog(
    barrierDismissible: boolVal1,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: boolVal2 == true
            ? CircleBorder()
            // borderRadius: BorderRadius.circular(30),

            : RoundedRectangleBorder(),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(30),
        // ),
        backgroundColor: startColor,
        title: new Text("Alert!!"),
        content: new Text("You are awesome!"),
        actions: [
          Center(
            child: TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}
