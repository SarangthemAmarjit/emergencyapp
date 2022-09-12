// To parse this JSON data, do
//
//     final ambulanceModel = ambulanceModelFromJson(jsonString);

import 'dart:convert';

List<AmbulanceModel> ambulanceModelFromJson(String str) =>
    List<AmbulanceModel>.from(
        json.decode(str).map((x) => AmbulanceModel.fromJson(x)));

String ambulanceModelToJson(List<AmbulanceModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AmbulanceModel {
  AmbulanceModel({
    required this.ambulanceDetail,
    required this.ambulanceImage,
    required this.ambulanceName,
    required this.ambulanceType,
    required this.id,
  });

  final AmbulanceDetail ambulanceDetail;
  final String ambulanceImage;
  final String ambulanceName;
  final String ambulanceType;
  final int id;

  factory AmbulanceModel.fromJson(Map<String, dynamic> json) => AmbulanceModel(
        ambulanceDetail: json["ambulance_detail"],
        ambulanceImage: json["ambulance_image"],
        ambulanceName: json["ambulance_name"],
        ambulanceType: json["ambulance_type"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "ambulance_detail": ambulanceDetail.toJson(),
        "ambulance_image": ambulanceImage,
        "ambulance_name": ambulanceName,
        "ambulance_type": ambulanceType,
        "id": id,
      };
}

class AmbulanceDetail {
  AmbulanceDetail({
    required this.ambulanceAddress,
    required this.ambulanceImage,
    required this.ambulanceName,
    required this.ambulanceNumber,
  });

  final String ambulanceAddress;
  final String ambulanceImage;
  final String ambulanceName;
  final String ambulanceNumber;

  factory AmbulanceDetail.fromJson(Map<String, dynamic> json) =>
      AmbulanceDetail(
        ambulanceAddress: json["ambulance_address"],
        ambulanceImage: json["ambulance_image"],
        ambulanceName: json["ambulance_name"],
        ambulanceNumber: json["ambulance_number"],
      );

  Map<String, dynamic> toJson() => {
        "ambulance_address": ambulanceAddress,
        "ambulance_image": ambulanceImage,
        "ambulance_name": ambulanceName,
        "ambulance_number": ambulanceNumber,
      };
}
