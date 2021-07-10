// lib/Row\Que02Expanded.dart
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que0211 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que0211> {
  final String image1 = "assets/help/Row/Que02.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Overflow (Icon)")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Row(
              children: <Widget>[
                Icon(
                  Icons.access_alarm,
                  size: 40,
                ),
                Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                Icon(
                  Icons.save,
                  size: 40,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.access_alarm,
                    size: 40,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.account_circle,
                    size: 40,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.save,
                    size: 40,
                  ),
                ),
              ],
            ),
            Divider(height: 15, thickness: 5, color: Colors.green),
            Text("No child wrapped in Expanded"),
            Row(
              children: <Widget>[
                Icon(
                  Icons.access_alarm,
                  size: 50,
                ),
                Icon(
                  Icons.account_circle,
                  size: 50,
                ),
                Icon(
                  Icons.save,
                  size: 50,
                ),
                Icon(
                  Icons.ac_unit_sharp,
                  size: 50,
                ),
                Icon(
                  Icons.people,
                  size: 50,
                ),
                Icon(
                  Icons.contact_phone,
                  size: 50,
                ),
                Icon(
                  Icons.contact_mail,
                  size: 50,
                ),
                Icon(
                  Icons.contact_page,
                  size: 50,
                ),
              ],
            ),
            Spacer(flex: 1),
            Text("Only one(first) child wrapped in Expanded"),
            Text("Only wrapped will compromise",
                style: TextStyle(fontSize: 12)),
            Row(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.access_alarm,
                    size: 50,
                  ),
                ),
                Icon(
                  Icons.account_circle,
                  size: 50,
                ),
                Icon(
                  Icons.save,
                  size: 50,
                ),
                Icon(
                  Icons.ac_unit_sharp,
                  size: 50,
                ),
                Icon(
                  Icons.people,
                  size: 50,
                ),
                Icon(
                  Icons.contact_phone,
                  size: 50,
                ),
                Icon(
                  Icons.contact_mail,
                  size: 50,
                ),
                Icon(
                  Icons.contact_page,
                  size: 50,
                ),
              ],
            ),
            Text("Number of child increased"),
            Row(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.access_alarm,
                    size: 50,
                  ),
                ),
                Icon(
                  Icons.account_circle,
                  size: 50,
                ),
                Icon(
                  Icons.save,
                  size: 50,
                ),
                Icon(
                  Icons.ac_unit_sharp,
                  size: 50,
                ),
                Icon(
                  Icons.people,
                  size: 50,
                ),
                Icon(
                  Icons.contact_phone,
                  size: 50,
                ),
                Icon(
                  Icons.contact_mail,
                  size: 50,
                ),
                Icon(
                  Icons.contact_page,
                  size: 50,
                ),
                Icon(
                  Icons.account_circle,
                  size: 50,
                ),
              ],
            ),
            Spacer(flex: 1),
            Text("All wrapped in Expanded"),
            Text("All will compromise", style: TextStyle(fontSize: 12)),
            Row(
              children: <Widget>[
                Expanded(
                  child: Icon(
                    Icons.access_alarm,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.save,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.ac_unit_sharp,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.people,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.contact_phone,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.contact_mail,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.contact_page,
                    size: 50,
                  ),
                ),
                Expanded(
                  child: Icon(
                    Icons.account_circle,
                    size: 50,
                  ),
                ),
              ],
            ),
            Spacer(flex: 3),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
