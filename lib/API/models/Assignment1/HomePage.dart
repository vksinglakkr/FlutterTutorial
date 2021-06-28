import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_tutorial/API/models/Assignment1/Users.dart';

class HomePage1 extends StatefulWidget {
  HomePage1() : super();

  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  List<User> _user;
  bool _loading;
  @override
  void initState() {
    super.initState();
    _loading = true;
    Services.getUsers().then((users) {
      setState(() {
        _user = users;
        _loading = false;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_loading ? 'Loading...' : 'Users')),
      body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount: _user == null ? 0 : _user.length,
              itemBuilder: (context, index) {
                User user = _user[index];
                return ListTile(
                  title: Text(user.name),
                  subtitle: Text(user.email),
                );
              })),
    );
  }
}

class Services {
  static Future<List<User>> getUsers() async {
    try {
      final response =
          await http.get('https://jsonplaceholder.typicode.com/users');
      if (response.statusCode == 200) {
        final List<User> user = userFromJson(response.body);
        return user;
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }
}
