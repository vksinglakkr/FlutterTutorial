import 'package:flutter/material.dart';

class Que07 extends StatefulWidget {
  @override
  _Que07State createState() {
    return _Que07State();
  }
}

class _Que07State extends State<Que07> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.teal,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Positioned(
                        top:10.0,
                        left: 20.0,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.teal,
                          child: Icon(
                            Icons.person,
                            size: 60,
                          ),
                        ),
                      ),
                      Positioned(
                        child: Text('example@example.com'),
                        top: 150,
                        left: 20,
                      ),
                      Positioned(
                        child: Text('App Title'),
                        top: 50,
                        right: 20,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.pageview,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        ' Go to sample page',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.info,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        ' About',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings_applications,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        ' Settings',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.white,
                ),

              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Home Screen'),
          backgroundColor: Colors.teal,
        ),
        body: Center(),
      ),
    );
  }
}