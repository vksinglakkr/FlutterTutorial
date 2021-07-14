import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class ListItem {
  int value;
  String name;

  ListItem(this.value, this.name);
}

class Que07 extends StatefulWidget {
  @override
  _Que07State createState() => _Que07State();
}

class _Que07State extends State<Que07> {
  List<ListItem> _dropdownItems = [
    ListItem(1, "First Value"),
    ListItem(2, "Second Item"),
    ListItem(3, "Third Item"),
    ListItem(4, "Fourth Item")
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems;
  ListItem _selectedItem;

  void initState() {
    super.initState();
    _dropdownMenuItems = buildDropDownMenuItems(_dropdownItems);
    _selectedItem = _dropdownMenuItems[0].value;
  }

  List<DropdownMenuItem<ListItem>> buildDropDownMenuItems(List listItems) {
    List<DropdownMenuItem<ListItem>> items = [];
    for (ListItem listItem in listItems) {
      items.add(
        DropdownMenuItem(
          child: Text(listItem.name),
          value: listItem,
        ),
      );
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dropdown Button"),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: DropdownButton<ListItem>(
            value: _selectedItem,
            items: _dropdownMenuItems,
            onChanged: (value) {
              setState(() {
                _selectedItem = value;
              });
            }),
      ),
    );
  }
}
