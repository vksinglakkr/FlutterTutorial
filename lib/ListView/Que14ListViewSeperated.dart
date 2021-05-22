import 'package:flutter/material.dart';

class Que14 extends StatelessWidget {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(animal[index]);
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
          itemCount: animal.length),
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
