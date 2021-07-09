// /**
//  * Created by Mahmud Ahsan
//  * https://github.com/mahmudahsan
//  */
import 'package:flutter/material.dart';
import 'package:flutter_tutorial/Others/Providers/drawer_menu.dart';
import 'package:flutter_tutorial/Others/Providers/models/ui.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:provider/provider.dart';

const kAppTitle = 'State Management by Provider';
const kStateType = 'Provider';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  String text = lorem(paragraphs: 3, words: 50);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAppTitle),
        backgroundColor: Colors.teal,
      ),
      drawer: DrawerMenu(),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Consumer<UI>(
          builder: (context, ui, child) {
            return RichText(
              text: TextSpan(
                text: text,
                style: TextStyle(fontSize: ui.fontSize, color: Colors.black),
              ),
            );
          },
        ),
      ),
    );
  }
}
