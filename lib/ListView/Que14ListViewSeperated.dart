// libListViewQue14ListViewSeperated.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que1411 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divider using ListView Demo',
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          color: Colors.purple,
          indent: 50,
          endIndent: 50,
          space: 50, //in theme instead of height it comes space
          thickness: 5,
        ),
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Divider using ThemeData & ListView Demo'),
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
  var animal = ['Cow', 'Dog', 'Cat', 'Lion'];

  final String image1 = "assets/help/ListView/Que14.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar(widget.title)),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                animal[index],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              );
            },
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: animal.length),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
