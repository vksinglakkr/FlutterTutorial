import 'package:http/http.dart' as http;
import 'package:flutter_tutorial/API/models/Assignment2/product.dart';

class Services {
  static Future<List<Product>> fetchData() async {
    try {
      http.Response response = await http.get(
          'http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');
      if (response.statusCode == 200) {
        // final List<User> user = userFromJson(response.body);
        // return user;
        return productFromJson(response.body);
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }
}
