import 'package:flutter/material.dart';
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
import 'Que37ListViewConditionOpe.dart';
import 'Que37aListViewConditionOpe.dart';
import 'Que37bSelectedRecordConditionalOpe.dart';
import 'Que38HorizontalScroll.dart';

class HomeListView2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - ListView(2)'),
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
                            MaterialPageRoute(builder: (context) => Que37()));
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
