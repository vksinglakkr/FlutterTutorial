// lib/Bar\HomeScreen_Bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Diagram/PageShowImage.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class HomeMnemonic extends StatefulWidget {
  @override
  _HomeMnemonicState createState() => _HomeMnemonicState();
}

class _HomeMnemonicState extends State<HomeMnemonic> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("Anatomy\nMnemonic Code"),
            bottom: TabBar(tabs: [
              const Tab(
                  icon: Icon(Icons.mobile_screen_share),
                  text: 'Anatomy (शरीर रचना)'),
              // const Tab(
              //     icon: Icon(Icons.code), text: 'Mnemonic Code (स्मृति सहायक)'),
            ])),
        body: TabBarView(
          children: [
            ListView.builder(
              key: PageStorageKey<String>('pageTwo'),
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageShowImage(
                                  text1: "Tab",
                                  image1:
                                      "assets/help/Tab/DefaultTabController.jpg")));
                    },
                    title: Text('Tab', style: TextStyle(fontSize: 24)),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PageShowImage(
                                text1: "ListView.separated",
                                image1:
                                    "assets/help/ListView/ListSeparated.jpg"),
                          ));
                    },
                    title: Text('ListView.separated',
                        style: TextStyle(fontSize: 24)),
                  ),
                ]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
