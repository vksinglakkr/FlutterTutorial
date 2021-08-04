import 'package:flutter/material.dart';
//Arun

class Que04 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('''
          If your bottom navigation bar items are more than three,  you have to manually set the type of the navigation bar to type: BottomNavigationBarType.fixed, otherwise the navigation bar items won’t be shown! 
          
          type: BottomNavigationBarType.shifting, ''')
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: "",
          ),
        ],
      ),
    );
  }
}
