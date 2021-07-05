// To parse this JSON data, do
//
//     final five = fiveFromJson(jsonString);

import 'dart:convert';

List<Five> fiveFromJson(String str) =>
    List<Five>.from(json.decode(str).map((x) => Five.fromJson(x)));

String fiveToJson(List<Five> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Five {
  Five({
    this.id,
    this.className,
    this.level,
  });

  int id;
  String className;
  int level;

  factory Five.fromJson(Map<String, dynamic> json) => Five(
        id: json["id"],
        className: json["class_name"],
        level: json["level"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "class_name": className,
        "level": level,
      };
}
