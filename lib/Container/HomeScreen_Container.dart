// lib/Container\HomeScreen_Container.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Box/Box_SizedBox/Que11Limited.dart';
import 'package:flutter_tutorial/Container/Que04changeColor.dart';
import 'package:flutter_tutorial/Container/Que10.dart';
import 'package:flutter_tutorial/Container/Que11.dart';
import 'package:flutter_tutorial/Container/Que28Gradient.dart';
import 'package:flutter_tutorial/Container/Que28RadialGradient.dart';
import 'package:flutter_tutorial/Container/Que31ContainerButton.dart';
import 'package:flutter_tutorial/Container/Que33ContainerButton.dart';
import 'package:flutter_tutorial/Container/Que34AnimatedFlight.dart';
import 'package:flutter_tutorial/Container/Que35AnimatedGraph.dart';
import 'package:flutter_tutorial/Container/Que36Gradient.dart';
import 'package:flutter_tutorial/Container/Que37AnimatedOpacity.dart';
import 'package:flutter_tutorial/Container/Que38OpacityMessage.dart';
import 'package:flutter_tutorial/Container/Que39AnimatedColor.dart';
import 'package:flutter_tutorial/Container/Que40AnimatedBorderWidth.dart';
import 'package:flutter_tutorial/Container/Que41AnimatedBorderRadius.dart';
import 'package:flutter_tutorial/Container/Que42_AnimatedCurves.dart';
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
import 'Que28LinearGradient.dart';
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
                Que02Container11(),
                "lib/Container/Que02ContainerWithinContainer.dart",
                "Container within Container",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                Que0311(),
                "lib/Container/Que03CustomContainer_Visibility.dart",
                "Container Visibility",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                Que1211(),
                "lib/Container/Que12WidthHeightConstraints.dart",
                "Width, Height Constraints",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que1311(), "lib/Container/Que13MediaQuery.dart",
                "Media Query", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(
                Que1411(),
                "lib/Container/Que14checkwidthheightwithcolumn.dart",
                "Check width height with column",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que1511(), "lib/Container/Que15Transform.dart",
                "Transform", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que16a11(), "lib/Container/Que16a_Align.dart", "Align",
                "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que1611(), "lib/Container/Que16alignment.dart",
                "Alignment", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que1711(), "lib/Container/Que17padding.dart", "Padding",
                "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que1811(), "lib/Container/Que18color.dart", "Color",
                "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que1911(), "lib/Container/Que119margin.dart", "margin",
                "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(
                Que2111(),
                "lib/Container/Que21ContainerStackPositioned.dart",
                "Container Stack Positioned",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que2311(), "lib/Container/Que23shape.dart", "shape",
                "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(
                Que2411(),
                "lib/Container/Que24Container_boxShadow.dart",
                "boxShadow",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                Que2511(),
                "lib/Container/Que25ContainerFlutterLogo.dart",
                "FlutterLogo",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que2611(), "lib/Container/Que26dart_forLoop.dart",
                "dart..forLoop", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que2711(), "lib/Container/Que27customContainer.dart",
                "Custom Container", "assets/help/Que01.jpg", "SubTitle"),
            Text("border:",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            ButtonsCode(
                Que2211(),
                "lib/Container/Que22decoration_borderradius.dart",
                "decoration.. border radius",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que2011(), "lib/Container/Que20decoration_border.dart",
                "Decoration Border", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que10(), "lib/Container/Que10.dart", "Decoration",
                "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que11StackExample(), "lib/Container/Que10.dart",
                "Stack Demo", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(
                BorderExample(),
                "lib/Container/Que40AnimatedBorderWidth.dart",
                "Animated Width of Border",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                BorderRadiusExample(),
                "lib/Container/Que41AnimatedBorderRadius.dart",
                "Animated Radius of Border",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que3011(), "lib/Container/Que30Border.dart", "Border",
                "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que3211(), "lib/Container/Que32ContainerBorder.dart",
                "Container border", "assets/help/Que01.jpg", "SubTitle"),
            Text("gradient",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            ButtonsCode(Que2811(), "lib/Container/Que28gradient.dart",
                "gradient", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(
                Que36GradientTransform(),
                "lib/Container/Que36Gradient.dart",
                "Animated Gradient",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                Que2811Ex1(),
                "lib/Container/Que28RadialGradient.dart",
                "All type of Gradient Ex1",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                Que28GradientExample(),
                "lib/Container/Que28Gradient.dart",
                "All type of Gradient Ex2",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que2911(), "lib/Container/Que29Fontsfamily.dart",
                "fontFamily", "assets/help/Que01.jpg", "SubTitle"),
            Text("Gesterdetector & InkWell",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
            ButtonsCode(
                Que01Container11(),
                "lib/Container/Que01ContainerOpacityGesterDetector.dart",
                "OpacityGesterDetector",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                Que31Container(),
                "lib/Container/Que31ContainerButton.dart",
                "Clickable Button-Container,Gesterdetector,snackbar",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                Que33Container(),
                "lib/Container/Que33ContainerButton.dart",
                "Clickable Button-Container,InkWell,snackbar",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que9711(), "lib/Container/Que97CustomContainer2.dart",
                "Custom Container 2", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que9811(), "lib/Container/Que98AnimatedContainer.dart",
                "Animated Container", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(Que9911(), "lib/Container/Que99AnimatedOpacity.dart",
                "Animated Opacity", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(QueAssign111(), "lib/Container/QueAssignment1.dart",
                "Assignment1", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(QueAssign211(), "lib/Container/QueAssignment2.dart",
                "Assignment2", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(QueAssign311(), "lib/Container/QueAssignment3.dart",
                "Assignment3", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(
                QueAssign411(),
                "lib/Container/QueAssignmentHowtofix2containersatcorners.dart",
                "How to fix two Containers at Corner",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                FlightExample(),
                "lib/Container/Que34AnimatedFlight.dart",
                "Animated Flight",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(GraphExample(), "lib/Container/Que35AnimatedGraph.dart",
                "Animated Graph", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(
                TextOpacitySimple(),
                "lib/Container/Que37AnimatedOpacity.dart",
                "Animated Opacity",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                ButtonOpacity(),
                "lib/Container/Que38OpacityMessage.dart",
                "Button Opacity",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(
                Que39Animated(),
                "lib/Container/Que39AnimatedColor.dart",
                "Animated Color",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que04(), "lib/Container/Que04changeColor.dart",
                "Change of color", "assets/help/Que01.jpg", "SubTitle"),
            ButtonsCode(
                AnimatedCurves(),
                "lib/Container/Que42_AnimatedCurves.dart",
                "Animated Curves Demo",
                "assets/help/Que01.jpg",
                "SubTitle"),
            ButtonsCode(Que11(), "lib/Box/Box_SizedBox/Que11Limited.dart",
                "Random Container", "assets/help/Que01.jpg", "SubTitle"),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
