import 'package:flutter/material.dart';
import 'Que01Basic.dart';
import 'Que02WithoutTabBar.dart';
import 'Que03OnlyDefaultTabController.dart';
import 'Que04WithoutTabBarView.dart';
import 'Que05WithoutDefaultTabController.dart';
import 'Que06OnlyTabBarView.dart';
import 'Que07OnlyTabBar.dart';
import 'Que08List.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeTabBar extends StatelessWidget {
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
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Card/Container'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que02()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Card/Container'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que03()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Card/Container'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que04()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Card/Container'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que05()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Card/Container'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que06()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Card/Container'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que07()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 22,
                  child: ElevatedButton(
                      child: Text('Card/Container'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que08()));
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
      sourceFilePath: 'lib/Tab/Que01Basic.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Tab/Que01Basic.dart',
    );
  }
}

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0211(),
      sourceFilePath: 'lib/Tab/Que02WithoutTabBar.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Tab/Que02WithoutTabBar.dart',
    );
  }
}

class Que03 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0311(),
      sourceFilePath: 'lib/Tab/Que03OnlyDefaultTabController.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Tab/Que03OnlyDefaultTabController.dart',
    );
  }
}

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0411(),
      sourceFilePath: 'lib/Tab/Que04WithoutTabBarView.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Tab/Que04WithoutTabBarView.dart',
    );
  }
}

class Que05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0511(),
      sourceFilePath: 'lib/Tab/Que05WithoutDefaultTabController.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Tab/Que05WithoutDefaultTabController.dart',
    );
  }
}

class Que06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0611(),
      sourceFilePath: 'lib/Tab/Que06OnlyTabBarView.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Tab/Que06OnlyTabBarView.dart',
    );
  }
}

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0711(),
      sourceFilePath: 'lib/Tab/Que07OnlyTabBar.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Tab/Que07OnlyTabBar.dart',
    );
  }
}

class Que08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0811(),
      sourceFilePath: 'lib/Tab/Que08List.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Tab/Que08List.dart',
    );
  }
}
