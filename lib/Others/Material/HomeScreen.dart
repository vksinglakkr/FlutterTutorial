// lib/Material\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/InkWell/Que02ClickonTextToggle.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01GridView_Material_ClipRRect.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Material Widget")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que02InkWell11(),
                  "lib/Others/InkWell/Que02ClickonTextToggle.dart", "InkWell"),
              Container(
                margin: EdgeInsets.all(2),
                height: 32,
                child: ElevatedButton(
                    child: Text('Material',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Que01()));
                    }),
              ),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0111(),
      sourceFilePath:
          'lib/Others/Material/Que01GridView_Material_ClipRRect.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/InkWell/Que01GridView_Material_ClipRRect.dart',
    );
  }
}
