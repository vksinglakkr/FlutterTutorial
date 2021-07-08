// lib/API/models/Assignment1/HomePage.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_tutorial/API/models/Assignment1/Users.dart';

class HomePage1 extends StatefulWidget {
  HomePage1() : super();
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  final String image1 = "assets/help/API/API_users_json.png";

  List<User> convertedJsonData;
  Future<List<User>> fetchData() async {
    try {
      http.Response response =
          await http.get('https://jsonplaceholder.typicode.com/users');
      if (response.statusCode == 200) {
        // final List<User> user = userFromJson(response.body);
        // return user;
        return userFromJson(response.body);
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData().then((users) {
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
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
