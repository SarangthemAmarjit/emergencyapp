// To parse this JSON data, do
//
//     final demoModel = demoModelFromJson(jsonString);

import 'dart:convert';

List<DemoModel> demoModelFromJson(String str) =>
    List<DemoModel>.from(json.decode(str).map((x) => DemoModel.fromJson(x)));

String demoModelToJson(List<DemoModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DemoModel {
  DemoModel({
    required this.name,
  });

  final String name;

  factory DemoModel.fromJson(Map<String, dynamic> json) => DemoModel(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
