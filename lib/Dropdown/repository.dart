import 'package:flutter_tutorial/Dropdown/state_model.dart';

class Repository {
  // http://locationsng-api.herokuapp.com/api/v1/lgas
  // test() => _nigeria.map((map) => StateModel.fromJson(map));
  List<Map> getAll() => _nigeria;

  getLocalByState(String state) => _nigeria
      .map((map) => StateModel.fromJson(map))
      .where((item) => item.state == state)
      .map((item) => item.lgas)
      .expand((i) => i)
      .toList();
  // _nigeria.where((list) => list['state'] == state);
  // .map((item) => item['lgas'])
  // .expand((i) => i)
  // .toList();

  List<String> getStates() => _nigeria
      .map((map) => StateModel.fromJson(map))
      .map((item) => item.state)
      .toList();
  // _nigeria.map((item) => item['state'].toString()).toList();

  List _nigeria = [
    {
      "state": "Haryana",
      "alias": "Haryana",
      "lgas": [
        "Amabala",
        "Bhiwani",
        "Gurugram",
        "Panchkula",
        "Rohtak",
        "Sirsa",
        "Hissar",
        "Kiathal",
        "Faridabad",
        "Fatehabad",
        "Sonipat",
        "Karnal",
        "Kurukshetra",
        "Mewat",
        "Jind"
      ]
    },
    {
      "state": "Punjab",
      "alias": "Punjab",
      "lgas": ["Patiala", "Sangrur", "Amritsar", "Ludhiana"]
    }
  ];
}
