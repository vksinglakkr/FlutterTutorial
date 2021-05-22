// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:radio_button/AlertDialog/HomeScreen_Alert.dart';
import 'package:radio_button/Align/HomeScreen_Align.dart';
import 'package:radio_button/Assignments/HomeScreen_Assignments.dart';
import 'package:radio_button/Bar/HomeScreen_Bar.dart';
import 'package:radio_button/Bar/HomeScreen_Snack.dart';
import 'package:radio_button/Bar/HomeScreen_Bottom.dart';
import 'package:radio_button/Bar/HomeScreen_Navigation.dart';
import 'package:radio_button/Box/HomeScreen_Constrained.dart';
import 'package:radio_button/Box/HomeScreen_Decorated.dart';
import 'package:radio_button/Box/HomeScreen_Fitted.dart';
import 'package:radio_button/Box/HomeScreen_FractionallySized.dart';
import 'package:radio_button/Box/HomeScreen_Limited.dart';
import 'package:radio_button/Box/HomeScreen_Rotated.dart';
import 'package:radio_button/Box/HomeScreen_Sized.dart';
import 'package:radio_button/Buttons/HomeScreen_Elevated.dart';
import 'package:radio_button/Buttons/HomeScreen_Flat.dart';
import 'package:radio_button/Buttons/HomeScreen_Floating.dart';
import 'package:radio_button/Buttons/HomeScreen_Radio.dart';
import 'package:radio_button/Card/HomeScreen_Card.dart';
import 'package:radio_button/Container/HomeScreen_Container.dart';
import 'package:radio_button/CustomWidgets/HomeScreen.dart';
import 'package:radio_button/Divider/HomeScreen.dart';
import 'package:radio_button/Drawer/HomeScreen.dart';
import 'package:radio_button/GesterDetector/HomeScreen.dart';
import 'package:radio_button/GridView/HomeScreen.dart';
import 'package:radio_button/Icons/HomeScreen.dart';
import 'package:radio_button/Image/HomeScreen_Image.dart';
import 'package:radio_button/InkWell/HomeScreen.dart';
import 'package:radio_button/ListView/HomeScreen_ListView1.dart';
import 'package:radio_button/ListView/HomeScreen_ListView2.dart';
import 'package:radio_button/ListView/HomeScreen_ListView3.dart';
import 'package:radio_button/Material/HomeScreen.dart';
import 'package:radio_button/Opacity/HomeScreen.dart';
import 'package:radio_button/Padding/HomeScreen.dart';
import 'package:radio_button/Placeholder/HomeScreen.dart';
import 'package:radio_button/ProgressIndicator_Loading/HomeScreen.dart';
import 'package:radio_button/Row/HomeScreen.dart';
import 'package:radio_button/Slider/HomeScreen.dart';
import 'package:radio_button/Spacer/HomeScreen.dart';
//import 'package:radio_button/Stack_IndexStack_Positioned/HomeScreen.dart';
import 'package:radio_button/Switch/HomeScreen.dart';
import 'package:radio_button/Tab/HomeScreen.dart';
import 'package:radio_button/Text/HomeScreen.dart';
import 'package:radio_button/TextField/HomeScreen.dart';
import 'package:radio_button/Transform/HomeScreen.dart';
import 'package:radio_button/Visibility/HomeScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Tutorial - NIC Kurukshetra'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(1),
        crossAxisCount: 3,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 4.2,
        children: [
          ElevatedButton(
              child: Text('AlertDialog', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeAlert(),
                  ))),
          ElevatedButton(
              child: Text('Align', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeAlign(),
                  ))),
          ElevatedButton(
              child: Text('Assignments', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeAssignments(),
                  ))),
          ElevatedButton(
              child: Text('AppBar', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeBar(),
                  ))),
          ElevatedButton(
              child: Text('Bottom Navigation Bar',
                  style: TextStyle(fontSize: 10, color: Colors.black)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeBottom(),
                  ))),
          ElevatedButton(
              child: Text('Navigation Bar',
                  style: TextStyle(fontSize: 10, color: Colors.black)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeNavigation(),
                  ))),
          ElevatedButton(
              child: Text('Snack Bar',
                  style: TextStyle(fontSize: 10, color: Colors.black)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSnack(),
                  ))),
          ElevatedButton(
              child: Text('Constrained Box',
                  style: TextStyle(fontSize: 10, color: Colors.black)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeConstrained(),
                  ))),
          ElevatedButton(
              child: Text('Decorated Box', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDecorated(),
                  ))),
          ElevatedButton(
              child: Text('Fitted Box',
                  style: TextStyle(fontSize: 10, color: Colors.black)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeFitted(),
                  ))),
          ElevatedButton(
              child: Text('Fractionally Sized Box',
                  style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeFractionallySized(),
                  ))),
          ElevatedButton(
              child: Text('Limited Box',
                  style: TextStyle(fontSize: 10, color: Colors.black)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeLimited(),
                  ))),
          ElevatedButton(
              child: Text('Rotated Box', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeRotated(),
                  ))),
          ElevatedButton(
              child: Text('Sized Box', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSized(),
                  ))),
          ElevatedButton(
              child: Text('Elevated Button', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeElevated(),
                  ))),
          ElevatedButton(
              child: Text('Flat Button', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeFlat(),
                  ))),
          ElevatedButton(
              child: Text('Floating Action Button',
                  style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeFloating(),
                  ))),
          ElevatedButton(
              child: Text('Radio Button', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeRadio(),
                  ))),
          ElevatedButton(
              child: Text('Card', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeCard(),
                  ))),
          ElevatedButton(
              child: Text('Container', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeContainer(),
                  ))),
          ElevatedButton(
            child: Text('Custom Widgets', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeCustomWidget(),
                )),
          ),
          ElevatedButton(
            child: Text('Divider', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeDivider(),
                )),
          ),
          ElevatedButton(
            child: Text('Drawer', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeDrawer(),
                )),
          ),
          ElevatedButton(
            child: Text('GesterDetector', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeGesterDetector(),
                )),
          ),
          ElevatedButton(
            child: Text('Grid View', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeGridView(),
                )),
          ),
          ElevatedButton(
            child: Text('Icons', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeIcons(),
                )),
          ),
          ElevatedButton(
              child: Text('Image', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeImage(),
                  ))),
          ElevatedButton(
            child: Text('InkWell', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeInkWell(),
                )),
          ),
          ElevatedButton(
              child: Text('ListView (1)', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeListView1(),
                  ))),
          ElevatedButton(
              child: Text('ListView (2)', style: TextStyle(fontSize: 10)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeListView2(),
                  ))),
          ElevatedButton(
              child: Text('ListView (3)', style: TextStyle(fontSize: 10)),
//              color: Theme.of(context).primaryColor,
//              textColor: Colors.white,
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeListView3(),
                  ))),
          ElevatedButton(
            child: Text('Material', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeMaterial(),
                )),
          ),
          ElevatedButton(
            child: Text('Opacity', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeOpacity(),
                )),
          ),
          ElevatedButton(
            child: Text('Padding', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomePadding(),
                )),
          ),
          ElevatedButton(
            child: Text('Placeholder', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomePlaceholder(),
                )),
          ),
          ElevatedButton(
            child: Text('ProgressIndicator', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeProgress(),
                )),
          ),
          ElevatedButton(
            child: Text('Row', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeRow(),
                )),
          ),
          ElevatedButton(
            child: Text('Slider', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeSlider(),
                )),
          ),
          ElevatedButton(
            child: Text('Spacer', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeSpacer(),
                )),
          ),
          ElevatedButton(
            child: Text('Switch', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeSwitch(),
                )),
          ),
          ElevatedButton(
            child: Text('Tab', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeTabBar(),
                )),
          ),
          ElevatedButton(
            child: Text('Text', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeText(),
                )),
          ),
          ElevatedButton(
            child: Text('TextField', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeTextField(),
                )),
          ),
          ElevatedButton(
            child: Text('Transform', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeTransform(),
                )),
          ),
          ElevatedButton(
            child: Text('Visibility', style: TextStyle(fontSize: 10)),
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeVisibility(),
                )),
          ),
        ],
      ),
    );
  }
}
