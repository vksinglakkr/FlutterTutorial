//lib/ListView/Que01SliderListView.dart

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Que01SlideList extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
    final List<String> items =
        new List<String>.generate(10, (i) => "item  ${i + 1}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Slideable Example"),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
          itemCount: items.length,
          itemBuilder: (context, int index) {
            return Slidable(
              actions: <Widget>[
                IconSlideAction(
                    icon: Icons.more,
                    caption: 'MORE',
                    color: Colors.blue,
                    onTap: () {
                      print("More ${items[index]} is Clicked");
                    }),
              ],
              secondaryActions: <Widget>[
                IconSlideAction(
                    icon: Icons.clear,
                    color: Colors.red,
                    caption: 'Cancel',
                    onTap: () {
                      print("Cancel ${items[index]} is Clicked");
                    })
              ],
              child: ListTile(
                leading: Icon(Icons.message),
                title: Text("${items[index]}"),
                subtitle: Text("Slide left or right"),
                trailing: Icon(Icons.arrow_back),
              ),
              actionPane: SlidableDrawerActionPane(),
            );
          }),
    );
  }
}
