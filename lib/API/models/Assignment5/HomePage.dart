//lib\API\SimpleMethod\Que11Map.dart

import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/models/Assignment5/Services.dart';

class HomePage5 extends StatefulWidget {
  @override
  _HomePage5State createState() => _HomePage5State();
}

class _HomePage5State extends State<HomePage5> {
  final String url1 =
      "https://thegrowingdeveloper.org/coding-blog/flutter-api-integration-learn-to-fetch-data-from-internet";
  final String video1 =
      "MEqUx3_KrFo"; // best video for Que11 i.e. of the growing developers
  String strResponse;
  @override
  void initState() {
    super.initState();
    Services.fetchData().then((peoples) {
      setState(() {
        strResponse = peoples;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data from Internet'),
      ),
      body: strResponse == null
          ? Container()
          : SingleChildScrollView(
              child: Text(
                strResponse.toString(),
                style: TextStyle(fontSize: 30),
              ),
            ),
    );
  }
}
