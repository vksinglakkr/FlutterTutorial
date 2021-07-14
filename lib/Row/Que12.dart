// /lib/Row/Que12.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:random_pk/random_pk.dart';

class Que12 extends StatelessWidget {
  final String video1 = "3VvxU4EL51M"; //Que12 final
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Overflow (Text) Ex.1")),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Column(
        children: [
          Spacer(flex: 1),
          Text("Overflow (Text wrapped in Row)",
              style: TextStyle(fontSize: 13.0)),
          RandomContainer(
            child: Row(
              children: [
                Text(
                    "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra.",
                    style: TextStyle(fontSize: 12.0)),
              ],
            ),
          ),
          Spacer(flex: 1),
          Text("SingleLine Solution: Wrap Text in Expanded",
              style: TextStyle(fontSize: 13.0)),
          RandomContainer(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                      "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra.",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 12.0)),
                ),
              ],
            ),
          ),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Spacer(flex: 1),
          SizedBox(height: 5),
          Text("MultiLine Solution: Wrap Text in Expanded",
              style: TextStyle(fontSize: 13.0)),
          Text("Note: Write-off overflow: ........",
              style: TextStyle(fontSize: 10.0)),
          RandomContainer(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                      "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra.",
                      style: TextStyle(fontSize: 12.0)),
                ),
              ],
            ),
          ),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Spacer(flex: 1),
          SizedBox(height: 10),
          Text("Horizontally Scrollable SingleLine Solution: ",
              style: TextStyle(fontSize: 13.0)),
          Text("Wrap Text->SingleChildScrollView->Expanded",
              style: TextStyle(fontSize: 10.0)),
          Text("also scrollDirection:Axis.horizontal",
              style: TextStyle(fontSize: 10.0)),
          RandomContainer(
            child: Row(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                        "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra.",
                        style: TextStyle(fontSize: 12.0)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Text("Wrong: Wrap Text->Expanded->SingleChildScrollView",
              style: TextStyle(fontSize: 13.0)),
          RandomContainer(
            child: Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Expanded(
                    child: Text(
                        "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra.",
                        style: TextStyle(fontSize: 12.0)),
                  ),
                ),
              ],
            ),
          ),
          Divider(height: 15, thickness: 5, color: Colors.green),
          Spacer(flex: 1),
          Text("Vertically Scrollable MultiLine Text Solution:",
              style: TextStyle(fontSize: 13.0)),
          Text("Wrap Text->SingleChildScrollView->Expanded",
              style: TextStyle(fontSize: 10.0)),
          Text("also scrollDirection:Axis.vertical",
              style: TextStyle(fontSize: 10.0)),
          RandomContainer(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 80,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Text(
                          "Kurukshetra has been described in the first verse of Shrimadbhagvadgita, in the form of Dharmakshetra Kurukshetra. Kurukshetra is a place of great historical and religious significance which is seen with reverence in all the countries due to its association with Vedas and Vedic culture. This is the land on which the battle of Mahabharata was fought and Lord Krishna gave Arjuna a fair knowledge of the philosophy of karma in the Jyotisar. ",
                          style: TextStyle(fontSize: 16.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
        ],
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
