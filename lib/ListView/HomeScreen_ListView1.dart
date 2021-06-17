//  \lib/ListView\HomeScreen_ListView1.dart
import 'package:flutter/material.dart';
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
                  ButtonsCode(Que0011(), "lib/ListView/Que00Issueof_final.dart",
                      "Compare ListView with Other"),
                  ButtonsCode(Que0111(), "lib/ListView/Que01ListViewBasic.dart",
                      "Issue of mentioning final or not"),
                  ButtonsCode(Que0611(), "lib/ListView/Que06ListViewBasic.dart",
                      "ListView"),
                  ButtonsCode(
                      Que0711(),
                      "lib/ListView/Que07ListViewContainer.dart",
                      "Container - ListView"),
                  ButtonsCode(
                      Que1311(),
                      "lib/ListView/Que13ListViewHorizontalScroll.dart",
                      "Card - ListView"),
                  ButtonsCode(Que1111(), "lib/ListView/Que11MixListView.dart",
                      "Text/Container/Card .. - ListView"),
                  ButtonsCode(
                      Que1011(),
                      "lib/ListView/Que10ListViewRadioButton.dart",
                      "Leading or Trailing Text"),
                  ButtonsCode(
                      Que1211(),
                      "lib/ListView/Que12HorizontalScroll.dart",
                      "Horizontal/Vertical Scroll"),
                  ButtonsCode(
                      Que0811(),
                      "lib/ListView/Que08ListViewDisableScroll.dart",
                      "Disable Horizontal/Vertical Scroll"),
                  ButtonsCode(
                      Que0911(),
                      "lib/ListView/Que08ListViewDisableScroll.dart",
                      "Limit Height"),
                  ButtonsCode(
                      Que2011(),
                      "lib/ListView\Que20ListTileDivideTiles.dart",
                      "ListTile.divideTiles Demo"),
                  ButtonsCode(
                      Que2111(),
                      "lib/ListView/Que21ListTileGeneral.dart",
                      "ListTile - Properties"),
                  ButtonsCode(
                      Que3811(),
                      "lib/ListView/Que38HorizontalScroll.dart",
                      "List<int> varDeclaration = [ , , , ]"),
                  ButtonsCode(
                      Que2911(),
                      "lib/ListView/Que29SimpleListBuilder.dart",
                      "ListView Builder - 1 List"),
                  ButtonsCode(
                      Que2711(),
                      "lib/ListView/Que27ListTileChangeLeadingColor.dart",
                      "SwitchListTile - Bulb On Off"),
                  ButtonsCode(
                      Que2811(),
                      "lib/ListView/Que28SwitchListTile_BulbOnOff.dart",
                      "SwitchListTile - Bulb On Off"),
                  ButtonsCode(
                      Que3011(),
                      "lib/ListView/Que30BuilderListView.dart",
                      "ListView Builder - 1 List Example1"),
                  ButtonsCode(
                      Que30a11(),
                      "lib/ListView/Que30aBuilderListView.dart",
                      "ListView Builder - 2 List Example2"),
                  ButtonsCode(
                      Que30b11(),
                      "lib/ListView/Que30bBuilderListView.dart",
                      "ListView Builder - 3 List Example3"),
                  ButtonsCode(Que1511(), "lib/ListView\Que15ListGenerate.dart",
                      "Generate List"),
                  ButtonsCode(
                      Que37a11(),
                      "lib/ListView/Que37aListViewConditionOpe.dart",
                      "Conditional Operator if..else.."),
                  ButtonsCode(
                      Que37b11(),
                      "lib/ListView/Que37bSelectedRecordConditionalOpe.dart",
                      "Show Selected Records Conditional Operator"),
                  ButtonsCode(Que3111(), "lib/ListView/Que31BasicBuilder.dart",
                      "Custom ListView.builder"),
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
