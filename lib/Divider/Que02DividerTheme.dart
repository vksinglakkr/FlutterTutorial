import 'package:flutter/material.dart';

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Divider using ThemeData Demo',
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
      home: MyHomePage(title: 'Divider using ThemeData Demo'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Divider(),
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
