import 'package:flutter/material.dart';

class Que09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(0),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountEmail: Text("kalpesh.khandla@bosc.in"),
                accountName: Text("Kalpesh Khandla"),
                currentAccountPicture: CircleAvatar(
                  child: Text("KK"),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  print("Home Clicked");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomeScreen()),
                  // );
                },
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text("Categories"),
                onTap: () {
                  print("Categories Clicked");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => CategoryScreen()),
                  // );
                },
              ),
              ListTile(
                leading: Icon(Icons.add_to_photos),
                title: Text("Add Items"),
                onTap: () {
                  print("Add Clicked");
                },
              ),
              ListTile(
                leading: Icon(Icons.info),
                title: Text("About Us"),
                onTap: () {
                  print("About Clicked");
                },
              ),
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Share with Friends"),
                onTap: () {
                  print("Share Clicked");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ShareScreen()),
                  // );
                },
              ),
              ListTile(
                leading: Icon(Icons.rate_review),
                title: Text("Rate and Review"),
                onTap: () {
                  print("Rate Clicked");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => RateScreen()),
                  // );
                },
              ),
              ListTile(
                leading: Icon(Icons.flag),
                title: Text("Privacy Policy"),
                onTap: () {
                  print("Privacy Clicked");
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => PrivacyScreen()),
                  // );
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
