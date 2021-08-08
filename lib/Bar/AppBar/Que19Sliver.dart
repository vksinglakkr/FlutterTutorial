// main.dart
import 'package:flutter/material.dart';

class Que19Sliver extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kindacode.com',
      theme: ThemeData(
          primaryColor: Colors.purple, accentColor: Colors.yellowAccent),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // This function show the sliver app bar
  // It will be called in each child of the TabBarView
  SliverAppBar showSliverAppBar(String screenTitle) {
    return SliverAppBar(
      backgroundColor: Colors.purple,
      floating: true,
      pinned: true,
      snap: false,
      title: Text(screenTitle),
      bottom: TabBar(
        tabs: [
          Tab(
            icon: Icon(Icons.home),
            text: 'Home',
          ),
          Tab(
            icon: Icon(Icons.settings),
            text: 'Setting',
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultTabController(
      length: 2,
      child: TabBarView(children: [
        // This CustomScrollView display the Home tab content
        CustomScrollView(
          slivers: [
            showSliverAppBar('Kindacode Home'),

            // Anther sliver widget: SliverList
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 400,
                  child: Center(
                    child: Text(
                      'Home Tab',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  height: 1500,
                  color: Colors.green,
                ),
              ]),
            ),
          ],
        ),

        // This shows the Settings tab content
        CustomScrollView(
          slivers: [
            showSliverAppBar('Settings Screen'),

            // Show other sliver stuff
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  height: 600,
                  color: Colors.blue[200],
                  child: Center(
                    child: Text(
                      'Settings Tab',
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ),
                Container(
                  height: 1200,
                  color: Colors.pink,
                ),
              ]),
            ),
          ],
        )
      ]),
    ));
  }
}
