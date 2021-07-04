//lib\API\SimpleMethod\Que13List.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Que13 extends StatefulWidget {
  @override
  _Que13State createState() => _Que13State();
}

class _Que13State extends State<Que13> {
   final String image1 = "assets/help/API/response.jpg";
 final String url1 =
      "https://thegrowingdeveloper.org/coding-blog/flutter-api-integration-learn-to-fetch-data-from-internet";
  final String video1 =
      "MEqUx3_KrFo"; // best video for Que13 Timing 9:30 i.e. of the growing developers
  String strResponse;
  List listResponse;

  Future fetchData() async {
    http.Response response;
    response = await http.get(
        'https://thegrowingdeveloper.org/apiview?id=4&type=application/json');
    if (response.statusCode == 200) {
      setState(() {
        strResponse = response.body;
        listResponse = json.decode(strResponse);
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          strResponse == null
              ? Center(child: CircularProgressIndicator())
              : Text(
                  "strResponse: \n" + strResponse.toString(),
                  style: TextStyle(fontSize: 16),
                ),
          SizedBox(height: 10),
          listResponse == null
              ? Center(child: CircularProgressIndicator())
              : Text(
                  "listResponse: \n" + listResponse.toString(),
                  style: TextStyle(fontSize: 16),
                ),
          SizedBox(height: 10),
          listResponse == null
              ? Center(child: CircularProgressIndicator())
              : Text(
                  "listResponse[2]: \n" + listResponse[2].toString(),
                  style: TextStyle(fontSize: 16),
                ),
          SizedBox(height: 10),
          Text("List View"),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(2),
                child: Text(
                  listResponse[index].toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            itemCount: listResponse == null ? 0 : listResponse.length,
          )
        ],
      ),
          bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
);
  }
}
