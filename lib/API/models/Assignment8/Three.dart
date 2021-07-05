// To parse this JSON data, do
//
//     final three = threeFromJson(jsonString);

import 'dart:convert';

Three threeFromJson(String str) => Three.fromJson(json.decode(str));

String threeToJson(Three data) => json.encode(data.toJson());

class Three {
  Three({
    this.id,
    this.name,
    this.property,
  });

  int id;
  String name;
  Property property;

  factory Three.fromJson(Map<String, dynamic> json) => Three(
        id: json["id"],
        name: json["name"],
        property: Property.fromJson(json["property"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "property": property.toJson(),
      };
}

class Property {
  Property({
    this.width,
    this.height,
  });

  double width;
  double height;

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "width": width,
        "height": height,
      };
}
