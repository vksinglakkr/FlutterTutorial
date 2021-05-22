import 'package:flutter/material.dart';

class Que02 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que02> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NIC Kurukshetra'),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
//              textColor: Colors.white,
//              color: Colors.blue,
              child: Text('Login'),
              onPressed: () {
                print(nameController.text);
                print(passwordController.text);
              },
            )
          ],
        ));
  }
}
