import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'custom_user.dart'; // Model Class
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que15 extends StatefulWidget {
  @override
  _Que15State createState() => _Que15State();
}

class _Que15State extends State<Que15> {
  final String url1 =
      "https://www.nstack.in/blog/flutter-everything-you-need-to-know-dropdown/#dropdown-example-2"; //Que15

  final String endpoint =
      "https://raw.githubusercontent.com/nitishk72/flutter_json_list/master/json_example.json";
  List<CustomUser> users = [];
  CustomUser selectedUsers;

  @override
  void initState() {
    super.initState();
    loadDropdown();
  }

  Future<void> loadDropdown() async {
    final http.Response response = await http.get(endpoint);
    final String body = response.body;
    final jsonResponse = json.decode(body);
    users = jsonResponse.map((e) => CustomUser.fromJson(e)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 4'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: DropdownButton<CustomUser>(
          hint: Text('Country'),
          value: selectedUsers,
          isExpanded: true,
          items: users.map((CustomUser user) {
            return DropdownMenuItem<CustomUser>(
              value: user,
//              child: Text('${user.name}'),
              child: Text('Vinod'),
            );
          }).toList(),
          onChanged: (CustomUser user) {
            setState(() {
              selectedUsers = user;
            });
            print("You selected \n ${user.toMap}");
          },
        ),
      ),
    );
  }
}
