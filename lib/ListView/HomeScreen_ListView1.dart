import 'package:flutter/material.dart';
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
