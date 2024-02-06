import 'dart:convert';

List<ServiceModel> serviceModelFromJson(String str) => List<ServiceModel>.from(
    json.decode(str).map((x) => ServiceModel.fromJson(x)));

String serviceModelToJson(List<ServiceModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ServiceModel {
  int id;
  String name;
  String level;
  String color;
  String image;
  String bimColor;

  ServiceModel({
    required this.id,
    required this.name,
    required this.level,
    required this.color,
    required this.image,
    required this.bimColor,
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) => ServiceModel(
        id: json["id"],
        name: json["name"],
        level: json["level"],
        color: json["color"],
        image: json["image"],
        bimColor: json["bimColor"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "level": level,
        "color": color,
        "image": image,
        "bimColor": bimColor,
      };
}
