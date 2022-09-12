// To parse this JSON data, do
//
//     final doctorModel = doctorModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<DoctorModel> doctorModelFromJson(String str) => List<DoctorModel>.from(
    json.decode(str).map((x) => DoctorModel.fromJson(x)));

String doctorModelToJson(List<DoctorModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DoctorModel {
  DoctorModel({
    required this.doctorname,
    required this.id,
    required this.image,
    required this.phone,
    required this.profession,
    required this.timing,
  });

  final String doctorname;
  final int id;
  final String image;
  final String phone;
  final String profession;
  final String timing;

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        doctorname: json["doctorname"],
        id: json["id"],
        image: json["image"],
        phone: json["phone"],
        profession: json["profession"],
        timing: json["timing"],
      );

  Map<String, dynamic> toJson() => {
        "doctorname": doctorname,
        "id": id,
        "image": image,
        "phone": phone,
        "profession": profession,
        "timing": timing,
      };
}
