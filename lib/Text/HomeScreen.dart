// lib\Text\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Image/BottomNavigationBar.dart';
import 'package:flutter_tutorial/Others/GesterDetector/Que01ClickonText.dart';
import 'package:flutter_tutorial/Others/GesterDetector/Que02ClickonTextToggle.dart';
import 'package:flutter_tutorial/Others/InkWell/HomeScreen.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';
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
      appBar: AppBar(
        title: Text('Text Property Demo'),
      ),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Text=>Properties',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01aText()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Text=>Properties=>overflow',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01overFlow()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Text=>Properties=>strutStyle',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01strutStyle()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Text=>Style',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01bStyle()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('How to make text Selectable?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Text()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('How to change the Color of Text?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que02Text()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('How to Underline/Overline a text?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que03Text()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Control distance between Text & Underline?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que03aText()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Shadow of Text?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que03bText()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Dynamically change the fontsize.',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que04Text()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Text on Image?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que19DecoraText()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('How to insert imojis in text?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que05Text()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('How to make text clickable using InkWell?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01InkWell()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Clickable text using GesterDetector?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que01Gester()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text(
                          'How to make text as toggle button using InkWell?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que02InkWell()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text(
                          'How to make text as toggle using GesterDector?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que02Gester()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('How to apply style on part of text?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que07TextSpan()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('How to adjust height of text?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que08TextScale()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('What is SemanticsLabel?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que09TextSemantics()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Conditional statement within Text?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que10Text()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('marquee',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que11Marquee()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Shape of Text',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que12TextShape()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                      child: Text('Formatting of Text',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Que13TextFormatting()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('Highlight every occurance of particular text.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    //                       Navigator.push(
                    //                          context,
                    //                         MaterialPageRoute(
                    //                            builder: (context) => Que13TextFormatting()));
                    //                  }
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('Responsive Text.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    //                       Navigator.push(
                    //                          context,
                    //                         MaterialPageRoute(
                    //                            builder: (context) => Que13TextFormatting()));
                    //                  }
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text(
                        'How to get text usign API from textfile on local directory?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    //                       Navigator.push(
                    //                          context,
                    //                         MaterialPageRoute(
                    //                            builder: (context) => Que13TextFormatting()));
                    //                  }
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('auto_size_text: ^2.1.0',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Que17AutoSizeText()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('text manipulation',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QueManipulation()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text(
                        'Parsing of data with the help of Package flutter_parsed_text 2.2.0',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Que17AutoSizeText()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('Setting of color, fontsize using themedata.',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Que17AutoSizeText()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('Styling of text with foreground: Paint()',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Que14Text()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('Gradient foreground',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Que15Gradient()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('DefaultTextStyle',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Que15Defaulttext()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(2),
                  height: 32,
                  child: ElevatedButton(
                    child: Text('Expandable Text (Show More/Show Less)',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QueShowMoreShowless()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}

class QueManipulation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: QueManipulation11(),
      sourceFilePath: 'lib/Text/QueManipulation.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/QueManipulation.dart',
    );
  }
}

class Que01Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Text11(),
      sourceFilePath: 'lib/Text/Que01SelectableText.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que01SelectableText.dart',
    );
  }
}

class Que01aText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01aText11(),
      sourceFilePath: 'lib/Text/Que01aProperties.dart',

      /// [codeLinkPrefix] is optional. When it's specified, two more buttons
      /// (open-code-in-browser, copy-code-link) will be added in the code view.
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que01aProperties.dart',
    );
  }
}

class Que01strutStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01strut(),
      sourceFilePath: 'lib/Text/Que01aProperties.dart',

      /// [codeLinkPrefix] is optional. When it's specified, two more buttons
      /// (open-code-in-browser, copy-code-link) will be added in the code view.
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que01aProperties.dart',
    );
  }
}

class Que01overFlow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01over(),
      sourceFilePath: 'lib/Text/Que01Overflow.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que01Overflow.dart',
    );
  }
}

class Que02Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02Text11(),
      sourceFilePath: 'lib/Text/Que02textColor.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que02textColor.dart',
    );
  }
}

class Que03Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que03Text11(),
      sourceFilePath: 'lib/Text/Que03UnderLine.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que03UnderLine.dart',
    );
  }
}

class Que03aText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que03aText11(),
      sourceFilePath: 'lib/Text/Que03aUnderLine.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que03aUnderLine.dart',
    );
  }
}

class Que03bText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que03bText11(),
      sourceFilePath: 'lib/Text/Que03bShadow.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que03bShadow.dart',
    );
  }
}

class Que04Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que04Text11(),
      sourceFilePath: 'lib/Text/Que04IncreaseFontSize.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que04IncreaseFontSize.dart',
    );
  }
}

class Que05Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que05Text11(),
      sourceFilePath: 'lib/Text/Que05ImageinText.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que05ImageinText.dart',
    );
  }
}

class Que07Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que07TextSpan(),
      sourceFilePath: 'lib/Text/Que07TextRich.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que07TextRich.dart',
    );
  }
}

class Que08Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que08TextScale(),
      sourceFilePath: 'lib/Text/Que08TextScalefactor.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que08TextScalefactor.dart',
    );
  }
}

class Que09Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que09TextSemantics(),
      sourceFilePath: 'lib/Text/Que09TextSemanticsLabel.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que09TextSemanticsLabel.dart',
    );
  }
}

class Que10Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que10Text11(),
      sourceFilePath: 'lib/Text/Que10TextConditional.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que10TextConditional.dart',
    );
  }
}

class Que11Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que11Marquee(),
      sourceFilePath: 'lib/Text/Que11TextMarquee.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que11TextMarquee.dart',
    );
  }
}

class Que12Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que12TextShape(),
      sourceFilePath: 'lib/Text/Que12TextShape.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que12TextShape.dart',
    );
  }
}

class Que13Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que13TextFormatting(),
      sourceFilePath: 'lib/Text/Que13TextFormatting.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que13TextFormatting.dart',
    );
  }
}

class Que14Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que14Forground(),
      sourceFilePath: 'lib/Text/Que14forground.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que14foreground.dart',
    );
  }
}

class Que15Defaulttext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que15Default(),
      sourceFilePath: 'lib/Text/Que15DefaulttextStyle.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que15DefaulttextStyle.dart',
    );
  }
}

class Que15Gradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que15Gradient11(),
      sourceFilePath: 'lib/Text/Que15GradientForeground.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que15GradientForeground.dart',
    );
  }
}

class Que17Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que17AutoSizeText(),
      sourceFilePath: 'lib/Text/Que17TextAutoSizetext.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que17TextAutoSizetext.dart',
    );
  }
}

class Que18Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que18Locale(),
      sourceFilePath: 'lib/Text/Que18TextLocale.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que18TextLocale.dart',
    );
  }
}

class Que19DecoraText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que19Deco(),
      sourceFilePath: 'lib/Text/Que19DecorationImageOvertext.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que19DecorationImageOvertext.dart',
    );
  }
}

class Que19MargueeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que19marquee(),
      sourceFilePath: 'lib/Text/Que19Marquee.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que19Marquee.dart',
    );
  }
}

class Que20Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que20Auto(),
      sourceFilePath: 'lib/Text/Que20AutoSizeTextwithMarquee.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que20AutoSizeTextwithMarquee.dart',
    );
  }
}

class Que21Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que21Trans(),
      sourceFilePath: 'lib/Text/Que21TransformSkewtext.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que21TransformSkewtext.dart',
    );
  }
}

class Que25Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que25Show(),
      sourceFilePath: 'lib/Text/Que25ShowContent_of_textFileWithoutWidget.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/Que25ShowContent_of_textFileWithoutWidget.dart',
    );
  }
}

class QueShowMoreShowless extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: QueDynamic11(),
      sourceFilePath: 'lib/Text/QueShowMoreShowless.dart',

      /// [codeLinkPrefix] is optional. When it's specified, two more buttons
      /// (open-code-in-browser, copy-code-link) will be added in the code view.
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Text/QueShowMoreShowless.dart',
    );
  }
}

class Que01Gester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que01Gester11(),
      sourceFilePath: 'lib/GesterDetector/Que01ClickonText.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/GesterDetector/Que01ClickonText.dart',
    );
  }
}

class Que02Gester extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que02Gester11(),
      sourceFilePath: 'lib/GesterDetector/Que02ClickonTextToggle.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/GesterDetector/Que02ClickonTextToggle.dart',
    );
  }
}
