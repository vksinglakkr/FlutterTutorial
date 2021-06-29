import 'package:http/http.dart' as http;
import 'package:flutter_tutorial/API/models/Assignment1/Users.dart';

class Services {
  static Future<List<User>> fetchData() async {
    try {
      http.Response response =
          await http.get('https://jsonplaceholder.typicode.com/users');
      if (response.statusCode == 200) {
        // final List<User> user = userFromJson(response.body);
        // return user;
        return userFromJson(response.body);
      } else {
        return throw Exception('Failed to load ...');
      }
    } catch (e) {
      return throw Exception('Failed to load ...');
    }
  }
}
