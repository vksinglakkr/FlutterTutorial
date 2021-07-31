import 'package:flutter/material.dart';

class Que06Theme extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF02BB9F),
        primaryColorDark: const Color(0xFF167F67),
        accentColor: const Color(0xFF167F67),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Theme - Icon',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                //basic example
                Icon(Icons.photo_size_select_actual),
                Icon(
                  Icons.developer_mode,
                  size: 80,
                ),
                Icon(
                  Icons.child_care,
                  color: Colors.blue,
                  size: 80,
                ),
                Icon(
                  Icons.smartphone,
                  color: Theme.of(context).primaryColor,
                  size: 80,
                  textDirection: TextDirection.ltr,
                )

                //icon with label below it
              ])),
    );
  }
}
