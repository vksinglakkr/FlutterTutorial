import 'package:flutter/material.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
import 'Que01CustomContainer_Visibility.dart';

class HomeVisibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Card/Container'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que01()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0111(),
      sourceFilePath: 'lib/Visibility/Que01CustomContainer_Visibility.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Visibility/Que01CustomContainer_Visibility.dart',
    );
  }
}
