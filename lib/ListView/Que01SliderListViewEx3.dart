//lib/ListView/Que01SliderListViewEx3.dart

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Que01SlideListEx3 extends StatelessWidget {
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
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey[300], blurRadius: 6, offset: Offset(0, -2))
        ]),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(
              Icons.supervised_user_circle,
              color: Colors.white,
            ),
          ),
          trailing: Icon(Icons.arrow_left),
          title: Text('FilledStacks'),
          subtitle: Text('Flutter Applications Developer'),
        ),
      ),
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Logout',
          color: Colors.blue,
          icon: Icons.assignment_return,
          onTap: () {},
        ),
        IconSlideAction(
          caption: 'Edit Profile',
          color: Colors.indigo,
          icon: Icons.edit,
          onTap: () {},
        ),
      ],
    );
  }
}
