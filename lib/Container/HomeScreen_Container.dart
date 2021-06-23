// lib/Container\HomeScreen_Container.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Container/Que31ContainerButton.dart';
import 'package:flutter_tutorial/Container/Que33ContainerButton.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'Que01ContainerOpacityGesterDetector.dart';
import 'Que02ContainerWithinContainer.dart';
import 'Que03CustomContainer_Visibility.dart';
import 'Que12WidthHeightConstraints.dart';
import 'Que13MediaQuery.dart';
import 'Que14checkwidthheightwithcolumn.dart';
import 'Que15Transform.dart';
import 'Que16alignment.dart';
import 'Que16a_Align.dart';
import 'Que17padding.dart';
import 'Que18color.dart';
import 'Que19margin.dart';
import 'Que20decoration_border.dart';
import 'Que21ContainerStackPositioned.dart';
import 'Que22decoration_borderradius.dart';
import 'Que23shape.dart';
import 'Que24Container_boxShadow.dart';
import 'Que25ContainerFlutterLogo.dart';
import 'Que26dart_forLoop.dart';
import 'Que27customContainer.dart';
import 'Que28gradient.dart';
import 'Que29Fontsfamily.dart';
import 'Que30Border.dart';
import 'Que32ContainerBorder.dart';
import 'Que97CustomContainer2.dart';
import 'Que98AnimatedContainer.dart';
import 'Que99AnimatedOpacity.dart';
import 'QueAssignment1.dart';
import 'QueAssignment2.dart';
import 'QueAssignment3.dart';
import 'QueAssignmentHowtofix2containersatcorners.dart';

class HomeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Container")),
        body: ListView(
          padding: EdgeInsets.all(3.0),
          children: [
            ButtonsCode(
                Que01Container11(),
                "lib/Container/Que01ContainerOpacityGesterDetector.dart",
                "OpacityGesterDetector"),
            ButtonsCode(
                Que02Container11(),
                "lib/Container/Que02ContainerWithinContainer.dart",
                "Container within Container"),
            ButtonsCode(
                Que0311(),
                "lib/Container/Que03CustomContainer_Visibility.dart",
                "Container Visibility"),
            ButtonsCode(
                Que1211(),
                "lib/Container/Que12WidthHeightConstraints.dart",
                "Width, Height Constraints"),
            ButtonsCode(
                Que1311(), "lib/Container/MediaQuery.dart", "Media Query"),
            ButtonsCode(
                Que1411(),
                "lib/Container/Que14checkwidthheightwithcolumn.dart",
                "Check width height with column"),
            ButtonsCode(
                Que1511(), "lib/Container/Que15Transform.dart", "Transform"),
            ButtonsCode(Que16a11(), "lib/Container/Que16a_Align.dart", "Align"),
            ButtonsCode(
                Que1611(), "lib/Container\Que16alignment.dart", "Alignment"),
            ButtonsCode(
                Que1711(), "lib/Container/Que17padding.dart", "Padding"),
            ButtonsCode(Que1811(), "lib/Container/Que18color.dart", "Color"),
            ButtonsCode(Que1911(), "lib/Container/Que119margin.dart", "margin"),
            ButtonsCode(Que2011(), "lib/Container/Que20decoration_border.dart",
                "Decoration Border"),
            ButtonsCode(
                Que2111(),
                "lib/Container/Que21ContainerStackPositioned.dart",
                "Container Stack Positioned"),
            ButtonsCode(
                Que2211(),
                "lib/Container/Que22decoration_borderradius.dart",
                "decoration.. border radius"),
            ButtonsCode(Que2311(), "lib/Container/Que23shape.dart", "shape"),
            ButtonsCode(Que2411(),
                "lib/Container/Que24Container_boxShadow.dart", "boxShadow"),
            ButtonsCode(Que2511(),
                "lib/Container/Que25ContainerFlutterLogo.dart", "FlutterLogo"),
            ButtonsCode(Que2611(), "lib/Container/Que26dart_forLoop.dart",
                "dart..forLoop"),
            ButtonsCode(Que2711(), "lib/Container/Que27customContainer.dart",
                "Custom Container"),
            ButtonsCode(
                Que2811(), "lib/Container/Que28gradient.dart", "gradient"),
            ButtonsCode(
                Que2911(), "lib/Container/Que29Fontsfamily.dart", "fontFamily"),
            ButtonsCode(Que3011(), "lib/Container/Que30Border.dart", "Border"),
            ButtonsCode(Que3211(), "lib/Container/Que32ContainerBorder.dart",
                "Container border"),
            ButtonsCode(
                Que31Container(),
                "lib/Container/Que31ContainerButton.dart",
                "Clickable Button-Container,Gesterdetector,snackbar"),
            ButtonsCode(
                Que33Container(),
                "lib/Container/Que33ContainerButton.dart",
                "Clickable Button-Container,InkWell,snackbar"),
            ButtonsCode(Que9711(), "lib/Container/Que97CustomContainer2.dart",
                "Custom Container 2"),
            ButtonsCode(Que9811(), "lib/Container\Que98AnimatedContainer.dart",
                "Animated Container"),
            ButtonsCode(Que9911(), "lib/Container/Que99AnimatedOpacity.dart",
                "Animated Opacity"),
            ButtonsCode(QueAssign111(), "lib/Container/QueAssignment1.dart",
                "Assignment1"),
            ButtonsCode(QueAssign211(), "lib/Container/QueAssignment2.dart",
                "Assignment2"),
            ButtonsCode(QueAssign311(), "lib/Container/QueAssignment3.dart",
                "Assignment3"),
            ButtonsCode(
                QueAssign411(),
                "lib/Container/QueAssignmentHowtofix2containersatcorners.dart",
                "How to fix two Containers at Corner"),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
