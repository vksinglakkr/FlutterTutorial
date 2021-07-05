// To parse this JSON data, do
//
//     final four = fourFromJson(jsonString);

import 'dart:convert';

Four fourFromJson(String str) => Four.fromJson(json.decode(str));

String fourToJson(Four data) => json.encode(data.toJson());

class Four {
  Four({
    this.id,
    this.flightName,
    this.passengers,
  });

  int id;
  String flightName;
  List<Passenger> passengers;

  factory Four.fromJson(Map<String, dynamic> json) => Four(
        id: json["id"],
        flightName: json["flight_name"],
        passengers: List<Passenger>.from(
            json["passengers"].map((x) => Passenger.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "flight_name": flightName,
        "passengers": List<dynamic>.from(passengers.map((x) => x.toJson())),
      };
}

class Passenger {
  Passenger({
    this.id,
    this.checkedBags,
  });

  int id;
  int checkedBags;

  factory Passenger.fromJson(Map<String, dynamic> json) => Passenger(
        id: json["id"],
        checkedBags: json["checked_bags"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "checked_bags": checkedBags,
      };
}
