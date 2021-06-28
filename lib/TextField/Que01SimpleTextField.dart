// lib/TextField\Que01SingleTextField.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0111 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0111> {
  final String image1 = "assets/help/TextField/Que01.png";
  final String video1 = "DMkkF_lVnpo"; //final TextField Que01
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("textField,\nhintText,labelText,helperText")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    'Basic Example',
//                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextField(),
//                  Divider(indent: 16, endIndent: 16, thickness: 3),
                  Text('hintText & hintStyle'),
                  TextField(
                    decoration: InputDecoration(
                      hintText:
                          'hintText: "Hint text", hintStyle: TextStyle(fontSize: 12)',
                      hintStyle: TextStyle(fontSize: 12),
                    ),
                  ),
                  Text('labelText & labelStyle'),
                  TextField(
                    decoration: InputDecoration(
                      labelText:
                          'labelText: "Label text",labelStyle: TextStyle(color: Colors.green, fontSize: 10)',
                      labelStyle: TextStyle(color: Colors.green, fontSize: 10),
                      hintText: 'hintText: "Hint text"',
                    ),
                  ),
                  Text('helperText & helperStyle'),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelStyle:
                            TextStyle(color: Colors.green, fontSize: 10),
                        labelText:
                            'helperText: ....helperMaxLines: 2,helperStyle: TextStyle(fontSize: 12)',
                        helperText: "*helperText, helperMaxLines, helperStyle",
                        helperMaxLines: 2,
                        helperStyle: TextStyle(
                          fontSize: 12,
                        )),
                  ),
                  Text('multiple textField in Row'),
                  Text('use Container/Expanded/Flexible/SizedBox)'),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Expanded(child: TextField(..)',
                            hintStyle:
                                TextStyle(color: Colors.green, fontSize: 10),
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Expanded(child: TextField(..)',
                            hintStyle:
                                TextStyle(color: Colors.green, fontSize: 10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
