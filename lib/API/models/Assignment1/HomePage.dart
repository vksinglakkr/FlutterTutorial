// lib/API/models/Assignment1/HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/models/Assignment1/Services.dart';

import 'package:flutter_tutorial/API/models/Assignment1/Users.dart';

class HomePage1 extends StatefulWidget {
  HomePage1() : super();
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List<User> convertedJsonData;
  @override
  void initState() {
    super.initState();
    Services.fetchData().then((users) {
      setState(() {
        convertedJsonData = users;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount:
                  convertedJsonData == null ? 0 : convertedJsonData.length,
              itemBuilder: (context, index) {
                User user = convertedJsonData[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              })),
    );
  }
}
