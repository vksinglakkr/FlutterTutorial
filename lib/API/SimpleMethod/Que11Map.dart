//lib\API\SimpleMethod\Que11Map.dart

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Que11 extends StatefulWidget {
  @override
  _Que11State createState() => _Que11State();
}

class _Que11State extends State<Que11> {
  final String url1 =
      "https://www.geeksforgeeks.org/implementing-rest-api-in-flutter/";
  final String video1 =
      "MEqUx3_KrFo"; // best video for Que11 i.e. of the growing developers

  Map mapResponse;
  List listOfFacts;

  Future fetchData() async {
    http.Response response;
    response = await http.get(
        'http://thegrowingdeveloper.org/apiview?id=2&type=application/json');
    if (response.statusCode == 200) {
      setState(() {
        mapResponse = json.decode(response.body);
        listOfFacts = mapResponse['facts'];
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
        title: Text('Fetch Data from Internet'),
      ),
      body: mapResponse == null
          ? Container()
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Text(
                    mapResponse['category'].toString(),
                    style: TextStyle(fontSize: 30),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Image.network(listOfFacts[index]['image_url']),
                            Text(
                              listOfFacts[index]['title'].toString(),
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              listOfFacts[index]['description'].toString(),
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: listOfFacts == null ? 0 : listOfFacts.length,
                  )
                ],
              ),
            ),
    );
  }
}
