import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _switch = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: ListView(
            children: [
              ListTile(
                title: Text('One Line ListTile'),
              ),
              ListTile(
                  title: Text('One Line ListTile with leading Widget'),
                  leading: Icon(Icons.contact_mail_rounded, color: Colors.red)),
              ListTile(
                  title: Text(
                      'One Line ListTile with Leading CircleAvatar Widget'),
                  leading: CircleAvatar(backgroundColor: Colors.red)),
              ListTile(
                  title: Text('One Line with trailing Widget'),
                  trailing: Icon(Icons.more_vert, color: Colors.red)),
              ListTile(
                  title: Text('One Line with leading and trailing Widget'),
                  trailing: Icon(Icons.more_vert, color: Colors.red),
                  leading: Icon(Icons.account_tree)),
              ListTile(
                title: Text('One Line Dense ListTile'),
                trailing: Icon(Icons.more_vert, color: Colors.red),
                leading: Icon(Icons.account_tree),
                dense: true,
              ),
              ListTile(
                title: Text('Two Lines ListTile with leading and trailing'),
                subtitle: Text('Second Line'),
                trailing: Icon(Icons.more_vert, color: Colors.red),
                leading: Icon(Icons.account_tree),
              ),
              ListTile(
                isThreeLine: true,
                title:
                    Text('Three Lines ListTile with \nleading \nand trailing'),
                subtitle: Text('For Three Line you can write long Subtitle'),
                trailing: Icon(Icons.more_vert, color: Colors.red),
                leading: Icon(Icons.account_tree),
              ),
              ListTileTheme(
                dense: true,
                iconColor: Colors.green,
                textColor: Colors.green,
                style: ListTileStyle.drawer,
                //style: ListTileStyle.list,
                child: ListTile(
                  title: Text('ListTileTheme'),
                  trailing: Icon(Icons.more_vert, color: Colors.red),
                  leading: Icon(Icons.account_tree),
                ),
              ),
              Card(
                color: Colors.black12,
                child: ListTile(
                  title: Text('ListTile with Card'),
                  subtitle: Text('Second Line'),
                  trailing: Icon(Icons.more_vert, color: Colors.red),
                  leading: Icon(Icons.account_tree),
                ),
              ),
              SwitchListTile(
                value: _switch,
                title: Text("Switch ListTile"),
                secondary: Icon(Icons.swap_vertical_circle),
                onChanged: (bool value) {},
              ),
            ],
          )),
    );
  }
}
