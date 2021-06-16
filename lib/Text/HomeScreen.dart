// lib\Text\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Text/Que16TextTheme.dart';
import 'package:flutter_tutorial/Text/Que22Animated.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/Others/GesterDetector/Que01ClickonText.dart';
import 'package:flutter_tutorial/Others/GesterDetector/Que02ClickonTextToggle.dart';
import 'Que01Overflow.dart';
import 'Que01aProperties.dart';
import 'Que01bStyle.dart';
import 'Que01strutStyle.dart';
import 'Que11TextMarquee.dart';
import 'Que01SelectableText.dart';
import 'Que02textColor.dart';
import 'Que03UnderLine.dart';
import 'Que03aUnderLine.dart';
import 'Que03bShadow.dart';
import 'Que04IncreaseFontSize.dart';
import 'Que05ImageinText.dart';
import 'Que07TextRich.dart';
import 'Que08TextScalefactor.dart';
import 'Que09TextSemanticsLabel.dart';
import 'Que10TextConditional.dart';
import 'Que12TextShape.dart';
import 'Que13TextFormatting.dart';
import 'Que14forground.dart';
import 'Que15DefaulttextStyle.dart';
import 'Que15GradientForeground.dart';
import 'Que17TextAutoSizetext.dart';
import 'Que18TextLocale.dart';
import 'Que19DecorationImageOvertext.dart';
import 'Que19Marquee.dart';
import 'Que20AutoSizeTextwithMarquee.dart';
import 'Que21TransformSkewtext.dart';
import 'Que25ShowContent_of_TextFileWithoutWidget.dart';
import 'QueManipulation.dart';
import 'QueShowMoreShowless.dart';

class HomeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Text Property Demo")),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                ButtonsCode(Que01aText11(), "lib/Text/Que01aProperties.dart",
                    "Text=>Properties"),
                ButtonsCode(Que01over(), "lib/Text/Que01Overflow.dart",
                    "Text=>Properties=>overflow"),
                ButtonsCode(Que01strut(), "lib/Text/Que01strutStyle.dart",
                    "Text=>Properties=>strutStyle"),
                ButtonsCode(
                    Que01bStyle(), "lib/Text/Que01bStyle.dart", "Text=>Style"),
                ButtonsCode(Que01Text11(), "lib/Text/Que01SelectableText.dart",
                    "How to make text Selectable?"),
                ButtonsCode(Que02Text11(), "lib/Text/Que02textColor.dart",
                    "How to change the Color of Text?"),
                ButtonsCode(Que03Text11(), "lib/Text/Que03UnderLine.dart",
                    "How to Underline/Overline a text?"),
                ButtonsCode(Que03aText11(), "lib/Text/Que03aUnderLine.dart",
                    "Control distance between Text & Underline?"),
                ButtonsCode(Que03bText11(), "lib/Text/Que03bShadow.dart",
                    "Shadow of Text?"),
                ButtonsCode(
                    Que04Text11(),
                    "lib/Text/Que04IncreaseFontSize.dart",
                    "Dynamically change the fontsize."),
                // ButtonsCode(
                //     Que19DecoraText11(),
                //     "lib/Text/Que19DecorationImageOvertext.dart",
                //     "Text on Image?"),
                ButtonsCode(Que05Text11(), "lib/Text/Que05ImageinText.dart",
                    "How to insert imojis in text?"),
                ButtonsCode(
                    Que01Gester11(),
                    "lib/GesterDetector/Que01ClickonText.dart",
                    "Clickable text using GesterDetector?"),
                ButtonsCode(
                    Que02Gester11(),
                    "lib/GesterDetector/Que01ClickonText.dart",
                    "Clickable text using GesterDetector?"),
                ButtonsCode(
                    Que02Gester11(),
                    "lib/GesterDetector/Que01ClickonText.dart",
                    "How to make text as toggle using GesterDector?"),
                ButtonsCode(Que07TextSpan(), "lib\Text\Que07TextRich.dart",
                    "How to apply style on part of text?"),
                ButtonsCode(
                    Que08TextScale(),
                    "lib\Text\Que08TextScalefactor.dart",
                    "How to adjust height of text?"),
                ButtonsCode(
                    Que09TextSemantics(),
                    "lib\Text\Que09TextSemanticsLabel.dart",
                    "What is SemanticsLabel?"),
                ButtonsCode(Que10Text11(), "lib\Text\Que10TextConditional.dart",
                    "Conditional statement within Text?"),
                ButtonsCode(Que11Marquee(), "lib\Text\Que11TextMarquee.dart",
                    "marquee"),
                ButtonsCode(Que12TextShape(), "lib\Text\Que12TextShape.dart",
                    "Shape of Text"),
                ButtonsCode(Que13TextFormatting(),
                    "lib\Text\Que13TextFormatting.dart", "Formatting of Text"),
                ButtonsCode(Que13TextFormatting(), "",
                    "Highlight every occurance of particular text."),
                ButtonsCode(Que14Forground(), "lib\Text\Que14forground.dart",
                    "Responsive Text."),
                ButtonsCode(
                    Que17AutoSizeText(),
                    "lib\Text\Que17TextAutoSizetext.dart",
                    "auto_size_text: ^2.1.0'"),
                ButtonsCode(QueManipulation11(),
                    "lib\Text\Que17TextAutoSizetext.dart", "text manipulation"),
                ButtonsCode(
                    Que17AutoSizeText(),
                    "lib\Text\Que17TextAutoSizetext.dart",
                    "Parsing of data with the help of Package flutter_parsed_text 2.2.0"),
                ButtonsCode(Que16Theme11(), "lib\Text\Que16TextTheme.dart",
                    "Setting of color, fontsize using themedata."),
                ButtonsCode(Que18Locale(), "lib\Text\Que18TextLocale.dart",
                    "Text=>Locale"),
                ButtonsCode(
                    Que15Gradient11(),
                    "lib\Text\Que15GradientForeground.dart",
                    "Gradient foreground"),
                ButtonsCode(Que15Default(),
                    "lib\Text\Que15DefaulttextStyle.dart", "DefaultTextStyle"),
                ButtonsCode(
                    Que20Auto(),
                    "lib\Text\Que20AutoSizeTextwithMarquee.dart",
                    "AutoSizetextwithmarquee"),
                ButtonsCode(
                    Que19Deco(),
                    "lib\Text\Que19DecorationImageOvertext.dart",
                    "Image over text"),
                ButtonsCode(
                    Que19marquee(), "lib\Text\Que19Marquee.dart", "Marquee"),
                ButtonsCode(QueDynamic11(), "lib\Text\QueShowMoreShowless.dart",
                    "Expandable Text (Show More/Show Less)"),
                ButtonsCode(
                    Que21Trans(),
                    "lib\Text\Que21TransformSkewtext.dart",
                    "Transform Skew text"),
                ButtonsCode(Que2211(), "lib\Text\Que22Animated.dart",
                    "Text Animation?"),
                ButtonsCode(
                    Que25Show(),
                    "lib\Text\Que25ShowContent_of_TextFileWithoutWidget.dart",
                    "Show Content of text File without Widget"),
                ButtonsCode(Que25Show(), "", "Animated_text_kit (Pending)"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
