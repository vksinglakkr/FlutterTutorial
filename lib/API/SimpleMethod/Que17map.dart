//lib\API\SimpleMethod\Que11Map.dart

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Que17 extends StatefulWidget {
  @override
  _Que17State createState() => _Que17State();
}

class _Que17State extends State<Que17> {
  Map mapResponse;
  List listOfFacts;

  Future fetchData() async {
    http.Response response;
    response =
        await http.get('https://www.metaweather.com/api/location/28743736/');
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listOfFacts = mapResponse['consolidated_weather'];
      });
    }
  }

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delhi Weather'),
      ),
      body: mapResponse == null
          ? Container()
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    "Min. Temp.:" + listOfFacts[0]['min_temp'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Max. Temp." + listOfFacts[0]['max_temp'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Sun Rise:" + mapResponse['sun_rise'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Sun Set:" + mapResponse['sun_set'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
    );
  }
}
