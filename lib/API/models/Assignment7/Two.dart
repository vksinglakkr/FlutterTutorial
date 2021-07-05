// To parse this JSON data, do
//
//     final two = twoFromJson(jsonString);

import 'dart:convert';

Two twoFromJson(String str) => Two.fromJson(json.decode(str));

String twoToJson(Two data) => json.encode(data.toJson());

class Two {
  Two({
    this.name,
    this.classes,
  });

  String name;
  List<String> classes;

  factory Two.fromJson(Map<String, dynamic> json) => Two(
        name: json["name"],
        classes: List<String>.from(json["classes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "classes": List<dynamic>.from(classes.map((x) => x)),
      };
}
