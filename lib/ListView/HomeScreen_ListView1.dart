import 'package:flutter/material.dart';
import 'package:radio_button/ListView/Que90Assignment.dart';
import 'Que01ListViewBasic.dart';
import 'Que00Issueof_final.dart';
import 'Que06ListViewBasic.dart';
import 'Que07ListViewContainer.dart';
import 'Que08ListViewDisableScroll.dart';
import 'Que09ListViewLimitHeight.dart';
import 'Que10ListViewRadioButton.dart';
import 'Que11MixListView.dart';
import 'Que12HorizontalScroll.dart';
import 'Que13ListViewHorizontalScroll.dart';
import 'Que20ListTileDivideTiles.dart';
import 'Que21ListTileGeneral.dart';
import 'Que15ListGenerate.dart';
import 'Que29SimpleListBuilder.dart';
import 'Que27ListTileChangeLeadingColor.dart';
import 'Que28SwitchListTile_BulbOnOff.dart';
import 'Que30BuilderListView.dart';
import 'Que30aBuilderListView.dart';
import 'Que30bBuilderListView.dart';
import 'Que31BasicBuilder.dart';
import 'Que32ListViewHorizontal.dart';
import 'Que33WithoutContextBuilder.dart';
import 'Que34WithoutListDeclaration.dart';
import 'Que35ListViewBuilder.dart';
import 'Que36ListAddItem.dart';
import 'Que37aListViewConditionOpe.dart';
import 'Que37bSelectedRecordConditionalOpe.dart';
import 'Que38HorizontalScroll.dart';
import 'Que39NavigatorListTile.dart';
import 'Que40BuilderinsideBuilder.dart';
import 'Que41spreadOperator.dart';
import 'Que14ListViewSeperated.dart';
import 'Que14aListViewSeperated.dart';
import 'Que42RandomList.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - ListView(1)'),
      ),
      body: SafeArea(
        child: Container(
          child: Builder(
            builder: (context) => ListView(
              padding: EdgeInsets.all(3.0),
              children: [
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
//                      color: Colors.orangeAccent,
                      child: Text('Compare ListView with Other'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que01()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
//                      color: Colors.orangeAccent,
                      child: Text('Issue of mentioning final or not'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que00()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Container - ListView (1)'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que06()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Container - ListView (2)'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que07()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Card - ListView'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que13()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Text/Container/Card .. - ListView'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que11()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Leading or Trailing Icon'),
//                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que10()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Leading or Trailing Text'),
//                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que10()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Leading or Trailing Iconic Button'),
//                      color: Colors.red,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que10()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Leading or Trailing Radio Button'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que10()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Horizontal/Vertical Scroll'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que12()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Disable Horizontal/Vertical Scroll'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que08()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Limit Height'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que09()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListTile.divideTiles Demo'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que20()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListTile - Properties'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que21()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('List<int> varDeclaration = [ , , , ]'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que38()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView Builder - 1 List'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que29()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListTile - Bulb On Off'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que27()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('SwitchListTile - Bulb On Off'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que28()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView Builder - 2 List Example1'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que30()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView Builder - 2 List Example2'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que30a()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView Builder - 2 List Example3'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que30b()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Generate List'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que15()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Conditional Operator if..else..'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que37a()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Conditional Operator if..else if..else'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que37a()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Show Selected Records Conditional Operator'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que37b()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Custom ListView.builder'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que31()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text(
                          'ListView.builder without List declaration Container'),
//                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que32()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text(
                          'ListView.builder without List declaration (image)'),
//                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que34()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text(
                          'ListView.builder without List declaration (int)'),
//                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que35()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text(
                          'itemBuilder: (_, index) i.e. without BuildContext'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que33()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Add Item in List'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que36()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Navigator (ListTile)'),
//                      color: Colors.brown,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que39()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Navigator (trailing - Icon)'),
//                      color: Colors.brown,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que10()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView.builder inside ListView.builder)'),
//                      color: Colors.brown,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que40()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('(...) spread operator)'),
//                      color: Colors.orange,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que41()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Map?'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView- addAutomaticKeepAlives:false'),
//                      color: Colors.red,
                      onPressed: () {
                        //    Navigator.push(context,
                        //        MaterialPageRoute(builder: (context) => Que()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text(
                          'ListView- physics: NeverScrollableScrollPhysics()'),
//                      color: Colors.red,
                      onPressed: () {
                        //    Navigator.push(context,
                        //        MaterialPageRoute(builder: (context) => Que()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('ListView.Seperated'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que14a()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child:
                          Text('Divider using ThemeData & ListView.Seperated'),
//                      color: Colors.orangeAccent,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Reverse'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Set the url to make the list'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Multi Column list View'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Use of Inkwell instead of ListTile'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Add/Delete/Sort in ListView'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('List with Instances & key'),
//                      color: Colors.red,
                      onPressed: () {
                        //  Navigator.push(context,
                        //      MaterialPageRoute(builder: (context) => Que14()));
                      }),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  height: 20,
                  child: ElevatedButton(
                      child: Text('Generate Random List'),
//                      color: Colors.orange,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Que42()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Go Back",
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.first_page),
      ),
    );
  }
}

class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0111(),
      sourceFilePath: 'lib/ListView/Que01ListViewBasic.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que01ListViewBasic.dart',
    );
  }
}

//-------------
class Que00 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0011(),
      sourceFilePath: 'lib/ListView/Que00Issueof_final.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que00Issueof_final.dart',
    );
  }
}

class Que06 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0611(),
      sourceFilePath: 'lib/ListView/Que06ListViewBasic.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que06ListViewBasic.dart',
    );
  }
}

class Que07 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0711(),
      sourceFilePath: 'lib/ListView/Que07ListViewContainer.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que07ListViewContainer.dart',
    );
  }
}

class Que08 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0811(),
      sourceFilePath: 'lib/ListView/Que08ListViewDisableScroll.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que08ListViewDisableScroll.dart',
    );
  }
}

class Que09 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0911(),
      sourceFilePath: 'lib/ListView/Que09ListViewLimitHeight.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que09ListViewLimitHeight.dart',
    );
  }
}

class Que10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que1011(),
      sourceFilePath: 'lib/ListView/Que10ListViewRadioButton.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que10ListViewRadioButton.dart',
    );
  }
}

class Que11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que1111(),
      sourceFilePath: 'lib/ListView/Que11MixListView.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que11MixListView.dart',
    );
  }
}

class Que12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que1211(),
      sourceFilePath: 'lib/ListView/Que12HorizontalScroll.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que12HorizontalScroll.dart',
    );
  }
}

class Que13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que1311(),
      sourceFilePath: 'lib/ListView/Que13ListViewHorizontalScroll.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que13ListViewHorizontalScroll.dart',
    );
  }
}

class Que14a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que14a11(),
      sourceFilePath: 'lib/ListView/Que14aListViewSeperated.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que14aListViewSeperated.dart',
    );
  }
}

class Que14 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que1411(),
      sourceFilePath: 'lib/ListView/Que14ListViewSeperated.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que14ListViewSeperated.dart',
    );
  }
}

class Que15 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que1511(),
      sourceFilePath: 'lib/ListView/Que15ListGenerate.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que15ListGenerate.dart',
    );
  }
}

class Que20 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que2011(),
      sourceFilePath: 'lib/ListView/Que20ListTileDivideTiles.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que20ListTileDivideTiles.dart',
    );
  }
}

class Que21 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que2111(),
      sourceFilePath: 'lib/ListView/Que21ListTileGeneral.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que21ListTileGeneral.dart',
    );
  }
}

class Que27 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que2711(),
      sourceFilePath: 'lib/ListView/Que27ListTileChangeLeadingColor.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que27ListTileChangeLeadingColor.dart',
    );
  }
}

class Que28 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que2811(),
      sourceFilePath: 'lib/ListView/Que28SwitchListTile_BulbOnOff.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que28SwitchListTile_BulbOnOff.dart',
    );
  }
}

class Que29 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que2911(),
      sourceFilePath: 'lib/ListView/Que29SimpleListBuilder.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que29SimpleListBuilder.dart',
    );
  }
}

class Que30b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que30b11(),
      sourceFilePath: 'lib/ListView/Que30bBuilderListView.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que30bBuilderListView.dart',
    );
  }
}

class Que30a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que30a11(),
      sourceFilePath: 'lib/ListView/Que30aBuilderListView.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que30aBuilderListView.dart',
    );
  }
}

class Que30 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3011(),
      sourceFilePath: 'lib/ListView/Que30BuilderListView.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que30BuilderListView.dart',
    );
  }
}

class Que31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3111(),
      sourceFilePath: 'lib/ListView/Que31BasicBuilder.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que31BasicBuilder.dart',
    );
  }
}

class Que32 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3211(),
      sourceFilePath: 'lib/ListView/Que32ListViewHorizontal.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que32ListViewHorizontal.dart',
    );
  }
}

class Que33 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3311(),
      sourceFilePath: 'lib/ListView/Que33WithoutContextBuilder.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que33WithoutContextBuilder.dart',
    );
  }
}

class Que34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3411(),
      sourceFilePath: 'lib/ListView/Que34WithoutListDeclaration.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que34WithoutListDeclaration.dart',
    );
  }
}

class Que35 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3511(),
      sourceFilePath: 'lib/ListView/Que35ListViewBuilder.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que35ListViewBuilder.dart',
    );
  }
}

class Que37a extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que37a11(),
      sourceFilePath: 'lib/ListView/Que37aListViewConditionOpe.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que37aListViewConditionOpe.dart',
    );
  }
}

class Que37b extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que37b11(),
      sourceFilePath: 'lib/ListView/Que37bSelectedRecordConditionalOpe.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que37bSelectedRecordConditionalOpe.dart',
    );
  }
}

class Que36 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3611(),
      sourceFilePath: 'lib/ListView/Que36ListAddItem.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que36ListAddItem.dart',
    );
  }
}

class Que38 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3811(),
      sourceFilePath: 'lib/ListView/Que38HorizontalScroll.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que38HorizontalScroll.dart',
    );
  }
}

class Que39 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que3911(),
      sourceFilePath: 'lib/ListView/Que39NavigatorListTile.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que39NavigatorListTile.dart',
    );
  }
}

class Que40 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que4011(),
      sourceFilePath: 'lib/ListView/Que40BuilderinsideBuilder.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que40BuilderinsideBuilder.dart',
    );
  }
}

class Que41 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que4111(),
      sourceFilePath: 'lib/ListView/Que41spreadOperator.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que41spreadOperator.dart',
    );
  }
}

class Que42 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que4211(),
      sourceFilePath: 'lib/ListView/Que42RandomList.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que42RandomList.dart',
    );
  }
}

class MyDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: MyDemo11(),
      sourceFilePath: 'lib/ListView/Que90Assignment.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/ListView/Que90Assignment.dart',
    );
  }
}
