//  \lib/ListView\HomeScreen_ListView1.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/ListView/Que02.dart';
import 'package:flutter_tutorial/ListView/Que03properties.dart';
import 'package:flutter_tutorial/ListView/Que15aColorListGenerate.dart';
import 'package:flutter_tutorial/ListView/Que43DismisItem.dart';
import 'package:flutter_tutorial/ListView/Que50Search.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
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

import 'Que90Assignment.dart';

class HomeListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("ListView")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(Que0111(), "lib/ListView/Que01ListViewBasic.dart",
                      "Replace ListView with Column"),
                  ButtonsCode(Que0611(), "lib/ListView/Que06ListViewBasic.dart",
                      "with Container Ex.1"),
                  ButtonsCode(
                      Que0711(),
                      "lib/ListView/Que07ListViewContainer.dart",
                      "with  Container Ex.2"),
                  ButtonsCode(Que1111(), "lib/ListView/Que11MixListView.dart",
                      "with Text/Container/Card Ex.3"),
                  ButtonsCode(Que03(), "lib/ListView/Que03properties.dart",
                      "Dynamic Properties"),
                  ButtonsCode(
                      Que2711(),
                      "lib/ListView/Que27ListTileChangeLeadingColor.dart",
                      "with ListTile - Bulb On Off"),
                  ButtonsCode(
                      Que2811(),
                      "lib/ListView/Que28SwitchListTile_BulbOnOff.dart",
                      "with SwitchListTile - Bulb On Off"),
                  ButtonsCode(
                      Que1311(),
                      "lib/ListView/Que13ListViewHorizontalScroll.dart",
                      "Scroll Horizontally Ex.1"),
                  ButtonsCode(
                      Que1211(),
                      "lib/ListView/Que12HorizontalScroll.dart",
                      "Scroll Horizontally Ex.2"),
                  ButtonsCode(
                      Que0811(),
                      "lib/ListView/Que08ListViewDisableScroll.dart",
                      "Disable Horizontal/Vertical Scroll"),
                  ButtonsCode(
                      Que1011(),
                      "lib/ListView/Que10ListViewRadioButton.dart",
                      "Leading or Trailing Text"),
                  ButtonsCode(
                      Que0911(),
                      "lib/ListView/Que09ListViewLimitHeight.dart",
                      "Limit Height"),
                  ButtonsCode(
                      Que2011(),
                      "lib/ListView/Que20ListTileDivideTiles.dart",
                      "Divider with ListTile.divideTiles"),
                  ButtonsCode(
                      Que2111(),
                      "lib/ListView/Que21ListTileGeneral.dart",
                      "ListTile - Properties"),
                  ButtonsCode(
                      Que3811(),
                      "lib/ListView/Que38HorizontalScroll.dart",
                      "Generate with List<int>"),
                  ButtonsCode(Que0011(), "lib/ListView/Que00Issueof_final.dart",
                      "Generate with List<String>"),
                  ButtonsCode(Que02(), "lib/ListView/Que02.dart",
                      "generate infinite list with ListViewBuilder Ex.1"),
                  ButtonsCode(
                      Que2911(),
                      "lib/ListView/Que29SimpleListBuilder.dart",
                      "with List<String>, ListViewBuilder Ex.2"),
                  ButtonsCode(
                      Que3011(),
                      "lib/ListView/Que30BuilderListView.dart",
                      "with List<String> & List<int>, ListViewBuilder Ex.3"),
                  ButtonsCode(
                      Que30a11(),
                      "lib/ListView/Que30aBuilderListView.dart",
                      "with List<String> & colorCode List, ListViewBuilder Ex.4"),
                  ButtonsCode(
                      Que30b11(),
                      "lib/ListView/Que30bBuilderListView.dart",
                      "with List<String> & icon List, ListViewBuilder Ex.5"),
                  ButtonsCode(Que1511(), "lib/ListView/Que15ListGenerate.dart",
                      "with List<String>.generate"),
                  ButtonsCode(
                      Que15a(),
                      "lib/ListView/Que15aColorListGenerate.dart",
                      "Generate List of Color"),
                  ButtonsCode(
                      Que37a11(),
                      "lib/ListView/Que37aListViewConditionOpe.dart",
                      "Conditional Operator if..else.."),
                  ButtonsCode(
                      Que37b11(),
                      "lib/ListView/Que37bSelectedRecordConditionalOpe.dart",
                      "Show Selected Records Conditional Operator"),
                  ButtonsCode(Que3111(), "lib/ListView/Que31BasicBuilder.dart",
                      "ListView.builder as seperate Class"),
                  ButtonsCode(
                      Que3211(),
                      "lib/ListView/Que32ListViewHorizontal.dart",
                      "ListView.builder without List declaration Container"),
                  ButtonsCode(
                      Que3411(),
                      "lib/ListView/Que34WithoutListDeclaration.dart",
                      "ListView.builder without List declaration (image)"),
                  ButtonsCode(
                      Que3511(),
                      "lib/ListView/Que35ListViewBuilder.dart",
                      "ListView.builder without List declaration (int)"),
                  ButtonsCode(Que3611(), "lib/ListView/Que36ListAddItem.dart",
                      "Add Item in List"),
                  ButtonsCode(
                      Que3311(),
                      "lib/ListView/Que33WithoutContextBuilder.dart",
                      "Add Item in List"),
                  ButtonsCode(
                      Que3911(),
                      "lib/ListView/Que39NavigatorListTile.dart",
                      "Navigator (ListTile)"),
                  ButtonsCode(
                      Que1011(),
                      "lib/ListView/Que10ListViewRadioButton.dart",
                      "Navigator (trailing - Icon)"),
                  ButtonsCode(
                      Que4011(),
                      "lib/ListView/Que40BuilderinsideBuilder.dart",
                      "ListView.builder inside ListView.builder"),
                  ButtonsCode(
                      Que4111(),
                      "lib/ListView/Que41spreadOperator.dart",
                      "(...) spread operator)"),
                  ButtonsCode(
                      Que43Dismis(),
                      "lib/ListView/Que43DismisItem.dart",
                      "Dismis Item from a List-List, Dismissible, SnackBar"),
                  ButtonsCode(
                      Que14a11(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Divider using ThemeData & ListView.Seperated"),
                  ButtonsCode(
                      Que1411(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Divider using ThemeData & ListView.Seperated"),
                  ButtonsCode(
                      Que1411(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Set the url to make the list"),
                  ButtonsCode(
                      Que1411(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Multi Column list View"),
                  ButtonsCode(
                      Que1411(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Use of Inkwell instead of ListTile"),
                  ButtonsCode(
                      Que1411(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Add/Delete/Sort in ListView"),
                  ButtonsCode(
                      Que1411(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "List with Instances & key"),
                  ButtonsCode(Que4211(), "lib/ListView/Que42RandomList.dart",
                      "Generate Random List"),
                  ButtonsCode(MyDemo11(), "lib/ListView/Que90Assignment.dart",
                      "Assignment"),
                  ButtonsCode(
                      Que50Search(), "lib/ListView/Que50Search.dart", "Search"),
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
