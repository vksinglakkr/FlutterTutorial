import 'package:flutter/material.dart';
import 'package:flutter_tutorial/API/models/Assignment2/Services.dart';
import 'package:flutter_tutorial/API/models/Assignment2/product.dart';

class HomePage2 extends StatefulWidget {
  HomePage2() : super();

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List<Product> _convertedJsonData;
  @override
  void initState() {
    super.initState();
    Services.fetchData().then((products) {
      setState(() {
        _convertedJsonData = products;
      });
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product')),
      body: Container(
          color: Colors.white,
          child: ListView.builder(
              itemCount:
                  _convertedJsonData == null ? 0 : _convertedJsonData.length,
              itemBuilder: (context, index) {
                Product product = _convertedJsonData[index];
                return ListTile(
                  title: Text(product.name),
                  subtitle: Text(product.price),
                );
              })),
    );
  }
}
