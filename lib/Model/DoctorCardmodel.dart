// To parse this JSON data, do
//
//     final DoctorcardModel = DoctorcardModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<DoctorcardModel> DoctorcardModelFromJson(String str) =>
    List<DoctorcardModel>.from(
        json.decode(str).map((x) => DoctorcardModel.fromJson(x)));

String DoctorcardModelToJson(List<DoctorcardModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DoctorcardModel {
  DoctorcardModel({
    required this.doctorImagesPath,
    required this.doctorName,
    required this.doctorprofession,
    required this.experience,
    required this.id,
    required this.phone,
    required this.rating,
    required this.timing,
  });

  final String doctorImagesPath;
  final String doctorName;
  final String doctorprofession;
  final String experience;
  final int id;
  final String phone;
  final String rating;
  final String timing;

  factory DoctorcardModel.fromJson(Map<String, dynamic> json) =>
      DoctorcardModel(
        doctorImagesPath: json["doctorImagesPath"],
        doctorName: json["doctorName"],
        doctorprofession: json["doctorprofession"],
        experience: json["experience"],
        id: json["id"],
        phone: json["phone"],
        rating: json["rating"],
        timing: json["timing"],
      );

  Map<String, dynamic> toJson() => {
        "doctorImagesPath": doctorImagesPath,
        "doctorName": doctorName,
        "doctorprofession": doctorprofession,
        "experience": experience,
        "id": id,
        "phone": phone,
        "rating": rating,
        "timing": timing,
      };
}
