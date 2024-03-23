// To parse this JSON data, do
//
//     final vehicles = vehiclesFromJson(jsonString);

// import 'package:meta/meta.dart';
import 'dart:convert';

List<Vehicles> vehiclesFromJson(String str) =>
    List<Vehicles>.from(json.decode(str).map((x) => Vehicles.fromJson(x)));

String vehiclesToJson(List<Vehicles> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Vehicles {
  String brand;
  String model;
  int year;
  int price;
  String photoUrl;

  Vehicles({
    required this.brand,
    required this.model,
    required this.year,
    required this.price,
    required this.photoUrl,
  });

  factory Vehicles.fromJson(Map<String, dynamic> json) => Vehicles(
        brand: json["brand"],
        model: json["model"],
        year: json["year"],
        price: json["price"],
        photoUrl: json["photoUrl"],
      );

  Map<String, dynamic> toJson() => {
        "brand": brand,
        "model": model,
        "year": year,
        "price": price,
        "photoUrl": photoUrl,
      };
}
