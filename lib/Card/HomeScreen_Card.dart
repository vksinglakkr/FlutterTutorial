// lib\Card\HomeScreen_Card.dart
import 'package:flutter/material.dart';
import 'Que01CardContainer.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeCard extends StatelessWidget {
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
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Simple Card',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return WidgetWithCodeView(
                            child: Que01Card11(),
                            sourceFilePath: 'lib/Card/Que01CardContainer.dart',
                            codeLinkPrefix:
                                'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Card/Que01CardContainer.dart',
                          );
                        }));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        backgroundColor: Colors.purple.shade300,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

// class Que01Card extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return WidgetWithCodeView(
//       child: Que01Card11(),
//       sourceFilePath: 'lib/Card/Que01CardContainer.dart',
//       codeLinkPrefix:
//           'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Card/Que01CardContainer.dart',
//     );
//   }
// }
