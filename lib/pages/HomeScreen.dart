// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/HomeScreenAPIMain.dart';
import 'package:flutter_tutorial/Buttons/HomeScreen_Buttons.dart';
import 'package:flutter_tutorial/Dropdown/HomeScreen_Dropdown.dart';
import 'package:flutter_tutorial/Expanded/HomeScreen.dart';
import 'package:flutter_tutorial/Others/HomeScreenOthers.dart';
import 'package:flutter_tutorial/Others/Theme/mainTheme.dart';
import 'package:flutter_tutorial/TextFormField/HomeScreen.dart';
import 'package:flutter_tutorial/widgets/exit-popup.dart';
import '../AlertDialog/HomeScreen_Alert.dart';
import '../Align/HomeScreen_Align.dart';
import '../Bar/HomeScreen_Bar.dart';
import '../Box/HomeScreen_Box.dart';
import '../Card/HomeScreen_Card.dart';
import '../Container/HomeScreen_Container.dart';
import '../Divider/HomeScreen.dart';
import '../Drawer/HomeScreen.dart';
import '../GridView/HomeScreen.dart';
import '../Icons/HomeScreen.dart';
import '../Image/HomeScreen_Image.dart';
import '../ListView/HomeScreen_ListView1.dart';
import '../Padding/HomeScreen.dart';
import '../Row/HomeScreen.dart';
import '../Slider/HomeScreen.dart';
import '../Switch/HomeScreen.dart';
import '../Tab/HomeScreen.dart';
import '../Text/HomeScreen.dart';
import '../TextField/HomeScreen.dart';
import '../Transform/HomeScreen.dart';
import '../SetUpAPK/HomeScreenSetUp.dart';
import 'BottomNavigationBar.dart';

class HomeScreen extends StatefulWidget {
  final Color primaryColor;
  const HomeScreen({key, this.primaryColor});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Flutter Tutorials"),
          actions: [
            PopupMenuButton(
                itemBuilder: (BuildContext varPrefer) => [
                      PopupMenuItem(
                          child: IconButton(
                              icon: const Icon(Icons.settings),
                              color: Colors.black,
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        MainTheme(),
                                  )))),
                      PopupMenuItem(
                          child: IconButton(
                        icon: const Icon(Icons.exit_to_app),
                        color: Colors.black,
                        onPressed: () => showExitPopup(context),
                      )),
                    ])
          ],
        ),
        body: GridView.count(
          padding: EdgeInsets.all(6),
          crossAxisCount: 3,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 1.92,
          children: [
            ElevatedButton(
                child: Text('AlertDialog',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlert(),
                    ))),
            ElevatedButton(
                child: Text('Align',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlign(),
                    ))),
            ElevatedButton(
                child: Text('Bar',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBar(),
                    ))),
            ElevatedButton(
                child: Text('Box',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBox(),
                    ))),
            ElevatedButton(
                child: Text('Dropdown',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeDropdown(),
                    ))),
            ElevatedButton(
                child: Text('Buttons',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeButton(),
                    ))),
            ElevatedButton(
                child: Text('Card',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeCard(),
                    ))),
            ElevatedButton(
                child: Text('Container',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeContainer(),
                    ))),
            ElevatedButton(
              child: Text('Divider',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDivider(),
                  )),
            ),
            ElevatedButton(
              child: Text('Drawer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDrawer(),
                  )),
            ),
            ElevatedButton(
              child: Text('Expanded',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeExpanded(),
                  )),
            ),
            ElevatedButton(
              child: Text('Grid View',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeGridView(),
                  )),
            ),
            ElevatedButton(
              child: Text('Icons',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeIcons(),
                  )),
            ),
            ElevatedButton(
                child: Text('Image',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeImage(),
                    ))),
            ElevatedButton(
                child: Text('ListView',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeListView1(),
                    ))),
            ElevatedButton(
              child: Text('Padding',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePadding(),
                  )),
            ),
            ElevatedButton(
              child: Text('Row /\nColumn',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeRow(),
                  )),
            ),
            ElevatedButton(
              child: Text('Slider',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSlider(),
                  )),
            ),
            ElevatedButton(
              child: Text('Switch',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSwitch(),
                  )),
            ),
            ElevatedButton(
              child: Text('Tab',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTabBar(),
                  )),
            ),
            ElevatedButton(
              child: Text('Text',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeText(),
                  )),
            ),
            ElevatedButton(
              child: Text('TextField',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTextField(),
                  )),
            ),
            ElevatedButton(
              child: Text('TextFormField',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTextFormField(),
                  )),
            ),
            ElevatedButton(
              child: Text('Transform',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTransform(),
                  )),
            ),
            ElevatedButton(
              child: Text('API',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeMainAPI(),
                  )),
            ),
            ElevatedButton(
              child: Text('Others',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreenOthers(),
                  )),
            ),
            ElevatedButton(
              child: Text('Setup/App Dev.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSetUp(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
