// lib/Theme\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/General/Que23.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/Others/General/Que01General_Base.dart';
import 'package:flutter_tutorial/Others/General/Que05return_MaterialApp_Container.dart';
import 'package:flutter_tutorial/Others/General/Que06return_Container.dart';
import 'package:flutter_tutorial/Others/General/Que07return_Scaffold_Container.dart';
import 'package:flutter_tutorial/Others/General/Que09StateFullWidget.dart';
import 'package:flutter_tutorial/Others/General/Que11StateLessStateLess.dart';
import 'package:flutter_tutorial/Others/General/Que12MaterialApp_Scaffold_MyAppAllinMain.dart';
import 'package:flutter_tutorial/Others/General/Que20NullSafety.dart';
import 'package:flutter_tutorial/Others/General/Que22late.dart';

import 'Que01.dart';
import 'Que02.dart';
import 'Que03.dart';
import 'Que08runApp_MaterialApp_MyApp.dart';
import 'Que10StateLessStateFul.dart';
import 'Que13ExtractMethod.dart';
import 'Que21.dart';

class HomeGeneral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("General")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01General11(),
                  "lib/Others/General/Que01General_Base.dart",
                  "General Base?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que0111(),
                  "lib/Others/General/Que01.dart",
                  "What the build method do?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(Que0211(), "lib/Others/General/Que02.dart",
                  "BuildContext?", "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(Que0311(), "lib/Others/General/Que03.dart",
                  "Builder Widget?", "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(
                  ReturnMaterialApp11(),
                  "lib/Others/General/Que02runApp_MaterialApp.dart",
                  "Return Material App Container?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  MyAppreturn011(),
                  "lib/Others/General/Que06return_Container.dart",
                  "Return Container?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que07MyApp011(),
                  "lib/Others/General/Que07return_Scaffold_Container.dart",
                  "Return Scaffold Container?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que08MyAppRun011(),
                  "lib/Others/General/Que08runApp_MaterialApp_MyApp.dart",
                  "RunApp MaterialApp?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que09MyHomePage011(),
                  "lib/Others/General/Que09StateFullWidget.dart",
                  "StateFullWidget?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que10Stateless011(),
                  "lib/Others/General/Que10StateLessStateFul.dart",
                  "Stateless Statefull Widget?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que11Stateless011(),
                  "lib/Others/General/Que11StateLessStateLess.dart",
                  "Stateless Widget?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que12MaterialApp011(),
                  "lib/Others/General/Que12MaterialApp_Scaffold_MyAppAllinMain.dart",
                  "MaterialApp Scaffold?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que13ExtractMathod011(),
                  "lib/Others/General/Que13ExtractMethod.dart",
                  "MaterialApp Scaffold?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que20NullSafety11(),
                  "lib/Others/General/Que20NullSafety.dart",
                  "Null Safety?",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(Que2111(), "lib/Others/General/Que21.dart", "TODO",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(
                  Que22(),
                  "lib/Others/General/Que22late.dart",
                  "Explain two kinds of Late",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que23(),
                  "lib/Others/General/Que23MaptoList.dart",
                  "Conversion of List to Map and vice versa",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
