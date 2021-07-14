import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';

class Que16 extends StatefulWidget {
  @override
  _Que16State createState() => _Que16State();
}

class _Que16State extends State<Que16> {
  final String url1 =
      "https://www.nstack.in/blog/multi-level-dropdown-in-a-flutter-part-1/"; //Que16

  List<String> countries = ['USA', 'India'];
  List<String> indiaProvince = ['New Delhi', 'Bihar', 'Rajasthan'];
  List<String> usaProvince = ['Texas', 'Florida', 'California'];

  List<String> provinces = [];
  String selectedCountry;
  String selectedProvince;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Multi Level Dropdown'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          // Country Dropdown
          DropdownButton<String>(
            hint: Text('Country'),
            value: selectedCountry,
            isExpanded: true,
            items: countries.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (country) {
              if (country == 'USA') {
                provinces = usaProvince;
              } else if (country == 'India') {
                provinces = indiaProvince;
              } else {
                provinces = [];
              }
              setState(() {
                selectedProvince = null;
                selectedCountry = country;
              });
            },
          ),
          // Country Dropdown Ends here

          // Province Dropdown
          DropdownButton<String>(
            hint: Text('Province'),
            value: selectedProvince,
            isExpanded: true,
            items: provinces.map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (province) {
              setState(() {
                selectedProvince = province;
              });
            },
          ),
          // Province Dropdown Ends here
        ],
      ),
    );
  }
}
