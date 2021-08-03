// lib/Bar\HomeScreen_Bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que00Diagram.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que01MnemonicCode.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que03.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que03Ex2.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que03Ex3.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que03ThemeText.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que06automaticallyImplyLeadingEx1.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que06automaticallyImplyLeadingEx2.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que07Leading.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que07LeadingText.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que08bottom.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que08bottomTabBar.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que09Brightness.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que10AppBarSample.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que11ThemeActionEx1.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que11action.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que11actionEx2.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que11actionEx3.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que11actionEx4.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que11actionPopupMenu.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que12ShapeEx1.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que12ShapeEx2.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que13IncrementDecrement.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que14.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que15BottomAppBar.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que16BottomAppbar.dart';
import 'package:flutter_tutorial/Bar/AppBar/Que17Silver.dart';
import 'package:flutter_tutorial/Container/Que28Gradient.dart';
import 'package:flutter_tutorial/Icons/Que05.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

import 'Que02CenterText.dart';
import 'Que04PopupText.dart';
import 'Que05PopupIconicButton.dart';
import 'Que06Popup.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("AppBar")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  Text("Anatomy (शरीर रचना)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que00Diagram(),
                      "lib/Bar/AppBar/Que00Diagram.dart",
                      "Design Diagram",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Mnemonic Code (स्मृति सहायक)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que01MnemonicCode(),
                      "lib/Bar/AppBar/Que01MnemonicCode.dart",
                      "Mnemonic Code",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("title:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que03(),
                      "lib/Bar/AppBar/Que03.dart",
                      "Minimum Basic Code",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03Ex2(),
                      "lib/Bar/AppBar/Que03Ex2.dart",
                      "title:, leading:, actions: all with Text",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03Ex3(),
                      "lib/Bar/AppBar/Que03Ex3.dart",
                      "title: with icon, Text",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03ThemeText(),
                      "lib/Bar/AppBar/Que03ThemeText.dart",
                      "textTheme:",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text(
                      "backgroundColor:,elevation:,brightness:,shadowColor:,toolbarHeight:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que02AppBar11(),
                      "lib/Bar/AppBar/Que02CenterText.dart",
                      "centerTitle:",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que09Bright(),
                      "lib/Bar/AppBar/Que09Brightness.dart",
                      "brightness:,elevation:,backgroundColor:,\ntoolbarHeight:",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("leading: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que07LeadingEx1(),
                      "lib/Bar/AppBar/Que07Leading.dart",
                      "leading: Ex.1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que07LeadingText(),
                      "lib/Bar/AppBar/Que07LeadingText.dart",
                      "leading: with Text",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("shape:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que12ShapeEx1(),
                      "lib/Bar/AppBar/Que12ShapeEx1.dart",
                      "shape: StadiumBorder()",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que12ShapeEx2(),
                      "lib/Bar/AppBar/Que12ShapeEx2.dart",
                      "shape: RoundedRectangle()",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("actions: ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que11ActionEx1(),
                      "lib/Bar/AppBar/Que11action.dart",
                      "actions: Ex.1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11ActionEx2(),
                      "lib/Bar/AppBar/Que11actionEx2.dart",
                      "actions: Ex.2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11ActionEx3(),
                      "lib/Bar/AppBar/Que11actionEx3.dart",
                      "actions: Ex.3",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11ActionEx4(),
                      "lib/Bar/AppBar/Que11actionEx4.dart",
                      "actions: using Padding()",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11Popup(),
                      "lib/Bar/AppBar/Que11actionPopupMenu.dart",
                      "actions: PopupMenuButton",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que11ThemeActionEx1(),
                      "lib/Bar/AppBar/Que11ThemeActionEx1.dart",
                      " actionsIconTheme: Ex.1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04Popup11(),
                      "lib/Bar/AppBar/Que04PopupText.dart",
                      "AppBar - 3 Dot Popup Menu (Text)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05Popup11(),
                      "lib/Bar/AppBar/Que05PopupIconicButton.dart",
                      "AppBar - 3 Dot Popup Menu (IconicButton)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06Popup11(),
                      "lib/Bar/AppBar/Que06Popup.dart",
                      "AppBar - 3 Dot Popup Menu (List)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("bottom:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que08bottom(),
                      "lib/Bar/AppBar/Que08bottom.dart",
                      "bottom: PreferredSize()",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que08bottomTabBar(),
                      "lib/Bar/AppBar/Que08bottomTabBar.dart",
                      "bottom:  Tabbar",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("automaticallyImplyLeading:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que06autoEx1(),
                      "lib/Bar/AppBar/Que06automaticallyImplyLeadingEx1.dart",
                      "Simple backarrow case",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que06autoEx2(),
                      "lib/Bar/AppBar/Que06automaticallyImplyLeadingEx2.dart",
                      "case of Drawer()",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("BottomAppBar()",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(Que15(), "lib/Bar/AppBar/Que15.dart",
                      "BottomAppBar Ex1", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que16BottomAppbarExample(),
                      "lib/Bar/AppBar/Que16BottomAppbar.dart",
                      "BottomAppBar Ex2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Silver Appbar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que17SliverAppBarExample(),
                      "lib/Icons/Que04.dart",
                      "SilverAppBar",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Gradient Appbar",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(TabBarDemo(), "lib/Icons/Que04.dart",
                      "TabBar Demo", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que28GradientExample(),
                      "lib/Container/Que28Gradient.dart",
                      "Gradient Allbar",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Projects",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que10AppBarSample(),
                      "lib/Bar/AppBar/Que10AppBarSample.dart",
                      "Advance AppBar Sample",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que13(),
                      "lib/Bar/AppBar/Que13IncrementDecrement.dart",
                      "Advance - inrement/decrement",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que14(),
                      "lib/Bar/AppBar/Que14.dart",
                      "Advance - showDialog",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
