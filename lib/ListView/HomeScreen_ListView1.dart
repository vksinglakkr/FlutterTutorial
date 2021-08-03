//  \lib/ListView\HomeScreen_ListView1.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/GridView/Que04PreserveScroll.dart';
import 'package:flutter_tutorial/ListView/Que01SlideableListView.dart';
import 'package:flutter_tutorial/ListView/Que01SliderListViewEx2.dart';
import 'package:flutter_tutorial/ListView/Que01SliderListViewEx3.dart';
import 'package:flutter_tutorial/ListView/Que01SliderListViewEx4.dart';
import 'package:flutter_tutorial/ListView/Que04ListTile.dart';
import 'package:flutter_tutorial/ListView/Que05ListBuilder.dart';
import 'package:flutter_tutorial/ListView/Que16.dart';
import 'package:flutter_tutorial/ListView/Que01.dart';
import 'package:flutter_tutorial/ListView/Que01a.dart';
import 'package:flutter_tutorial/ListView/Que01b.dart';
import 'package:flutter_tutorial/ListView/Que02.dart';
import 'package:flutter_tutorial/ListView/Que03properties.dart';
import 'package:flutter_tutorial/ListView/Que07aListViewInkwell.dart';
import 'package:flutter_tutorial/ListView/Que15aColorListGenerate.dart';
import 'package:flutter_tutorial/ListView/Que17.dart';
import 'package:flutter_tutorial/ListView/Que18WheelScrolling.dart';
import 'package:flutter_tutorial/ListView/Que43DismisItem.dart';
import 'package:flutter_tutorial/ListView/Que43a.dart';
import 'package:flutter_tutorial/ListView/Que44Sort.dart';
import 'package:flutter_tutorial/ListView/Que44a.dart';
import 'package:flutter_tutorial/ListView/Que50Search.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:flutter_tutorial/pages/HomePending.dart';
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
                  Text("Anatomy (शरीर रचना)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  Text("Mnemonic Code (स्मृति सहायक)",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  Text("Static Lists",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que0111(),
                      "lib/ListView/Que01ListViewBasic.dart",
                      "Replace ListView with Column",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01(),
                      "lib/ListView/Que01.dart",
                      "ListView with Text",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01a(),
                      "lib/ListView/Que01a.dart",
                      "ListView with ListTile ",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01b(),
                      "lib/ListView/Que01b.dart",
                      "ListView with ListTile & ElevatedButton ",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0611(),
                      "lib/ListView/Que06ListViewBasic.dart",
                      "with Container Ex.1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0711(),
                      "lib/ListView/Que07ListViewContainer.dart",
                      "with  Container Ex.2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que1111(),
                      "lib/ListView/Que11MixListView.dart",
                      "with Text/Container/Card Ex.3",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Dynamic Lists",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que03(),
                      "lib/ListView/Que03properties.dart",
                      "Dynamic Properties",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0711a(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Use of Inkwell instead of ListTile",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Scrolling",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que16(),
                      "lib/ListView/Que37bSelectedRecordConditionalOpe.dart",
                      "Scrolling Top Bottom",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que1311(),
                      "lib/ListView/Que13ListViewHorizontalScroll.dart",
                      "Scroll Horizontally Ex.1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que1211(),
                      "lib/ListView/Que12HorizontalScroll.dart",
                      "Scroll Horizontally Ex.2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0811(),
                      "lib/ListView/Que08ListViewDisableScroll.dart",
                      "Disable Horizontal/Vertical Scroll",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que18ListWheelViewExample(),
                      "lib/ListView/Que18WheelScrolling.dart",
                      "List Wheel Scroll View",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04PreserveScroll(),
                      "lib/GridView/Que04PreserveScroll.dart",
                      "Preserve Scroll Position",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Leading & Trailing",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      HomePending(),
                      "lib/ListView/Que10ListViewRadioButton.dart",
                      "Navigator (trailing - Icon)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que3911(),
                      "lib/ListView/Que39NavigatorListTile.dart",
                      "Navigator (ListTile)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que1011(),
                      "lib/ListView/Que10ListViewRadioButton.dart",
                      "Trailing Radio Button",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0911(),
                      "lib/ListView/Que09ListViewLimitHeight.dart",
                      "Limit Height",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que2111(),
                      "lib/ListView/Que21ListTileGeneral.dart",
                      "ListTile - Properties",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que04ListTileExample(),
                      "lib/ListView/Que04ListTileExample.dart",
                      "ListTile Demo",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Type Declartion",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que3811(),
                      "lib/ListView/Que38HorizontalScroll.dart",
                      "Generate with List<int>",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que3811(),
                      "lib/ListView/Que38HorizontalScroll.dart",
                      "Generate with List<int>",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0011(),
                      "lib/ListView/Que00Issueof_final.dart",
                      "Generate with List<String>",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      MyDemo11(),
                      "lib/ListView/Que90Assignment.dart",
                      "Generate with List<Tab>",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      HomePending(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "List with Instances & key - Pending",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      HomePending(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Set the url to make the list",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que4111(),
                      "lib/ListView/Que41spreadOperator.dart",
                      "(...) spread operator)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("ExpansionTile",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que17ExpansionTileExample(),
                      "lib/ListView/Que17.dart",
                      "ExpansionTile",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("ListViewBuilder",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que02(),
                      "lib/ListView/Que02.dart",
                      "generate infinite list with ListViewBuilder Ex.1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que05ListViewBuilderExample(),
                      "lib/ListView/Que05ListBuilder.dart",
                      "generate list with ListViewBuilder Ex.2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que2911(),
                      "lib/ListView/Que29SimpleListBuilder.dart",
                      "with List<String>, ListViewBuilder Ex.3",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que3011(),
                      "lib/ListView/Que30BuilderListView.dart",
                      "with List<String> & List<int>, ListViewBuilder Ex.3",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que30a11(),
                      "lib/ListView/Que30aBuilderListView.dart",
                      "with List<String> & colorCode List, ListViewBuilder Ex.4",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que30b11(),
                      "lib/ListView/Que30bBuilderListView.dart",
                      "with List<String> & icon List, ListViewBuilder Ex.5",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que3111(),
                      "lib/ListView/Que31BasicBuilder.dart",
                      "ListView.builder as seperate Class",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que3211(),
                      "lib/ListView/Que32ListViewHorizontal.dart",
                      "ListView.builder without List declaration Container",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que3411(),
                      "lib/ListView/Que34WithoutListDeclaration.dart",
                      "ListView.builder without List declaration (image)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que3511(),
                      "lib/ListView/Que35ListViewBuilder.dart",
                      "ListView.builder without List declaration (int)",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Add,Delete,Sorting,shuffle",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      ReorderableViewPage(),
                      "lib/ListView/Que44Sort.dart",
                      "Reorderable ListView Ex1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que44aReorderableListExample(),
                      "lib/ListView/Que44a.dart",
                      "Reorderable ListView Ex2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que4211(),
                      "lib/ListView/Que42RandomList.dart",
                      "Generate Random List",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que43Dismis(),
                      "lib/ListView/Que43DismisItem.dart",
                      "Dismis Item from a List-List, Dismissible, SnackBar Ex.1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que43ListSwipeToDismissExample(),
                      "lib/ListView/Que43a.dart",
                      "Dismis Item from a List-List, Dismissible, SnackBar Ex.2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(Que3611(), "lib/ListView/Que36ListAddItem.dart",
                      "Add Item in List", "assets/help/Que01.jpg", "SubTitle"),
                  Text("ListView.generate",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que1511(),
                      "lib/ListView/Que15ListGenerate.dart",
                      "with List<String>.generate",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que15a(),
                      "lib/ListView/Que15aColorListGenerate.dart",
                      "Generate List of Color",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Separator",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que2011(),
                      "lib/ListView/Que20ListTileDivideTiles.dart",
                      "Divider with ListTile.divideTiles",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que14a11(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Divider using ListView.Seperated",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que1411(),
                      "lib/ListView/Que14ListViewSeperated.dart",
                      "Divider using ThemeData & ListView.Seperated",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Theme Data",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que1411(),
                      "lib/ListView/Que14ListViewSeperated.dart",
                      "Divider using ThemeData & ListView.Seperated",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Slideable ListView",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(
                      Que01SlideListEx3(),
                      "lib/ListView/Que01SlideableListViewEx3.dart",
                      "Slideable ListView Ex1",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01SlideList(),
                      "lib/ListView/Que01SlideableListView.dart",
                      "Slideable ListView Ex2",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01SliderEx2(),
                      "lib/ListView/Que01SliderListViewEx2.dart",
                      "Slideable ListView Ex3",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que01SlideListEx4(),
                      "lib/ListView/Que01SliderListViewEx4.dart",
                      "Slideable ListView Ex4",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  Text("Projects",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic)),
                  ButtonsCode(Que50Search(), "lib/ListView/Que50Search.dart",
                      "Search", "assets/help/Que01.jpg", "SubTitle"),
                  ButtonsCode(
                      Que2711(),
                      "lib/ListView/Que27ListTileChangeLeadingColor.dart",
                      "with ListTile - Bulb On Off",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que2811(),
                      "lib/ListView/Que28SwitchListTile_BulbOnOff.dart",
                      "with SwitchListTile - Bulb On Off",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      HomePending(),
                      "lib/ListView/Que14aListViewSeperated.dart",
                      "Multi Column list View",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que4011(),
                      "lib/ListView/Que40BuilderinsideBuilder.dart",
                      "ListView.builder inside ListView.builder",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que37a11(),
                      "lib/ListView/Que37aListViewConditionOpe.dart",
                      "Conditional Operator if..else..",
                      "assets/help/Que01.jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que37b11(),
                      "lib/ListView/Que37bSelectedRecordConditionalOpe.dart",
                      "Show Selected Records Conditional Operator",
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
