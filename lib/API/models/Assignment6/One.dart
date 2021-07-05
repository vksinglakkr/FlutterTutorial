// To parse this JSON data, do
//
//     final one = oneFromJson(jsonString);

import 'dart:convert';

One oneFromJson(String str) => One.fromJson(json.decode(str));

String oneToJson(One data) => json.encode(data.toJson());

class One {
  One({
    this.id,
    this.name,
    this.gender,
  });

  int id;
  String name;
  String gender;

  factory One.fromJson(Map<String, dynamic> json) => One(
        id: json["id"],
        name: json["name"],
        gender: json["gender"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "gender": gender,
      };
}
