// To parse this JSON data, do
//
//     final plantRec = plantRecFromJson(jsonString);

import 'dart:convert';

PlantRecommendation plantRecFromJson(String str) => PlantRecommendation.fromJson(json.decode(str));

String plantRecToJson(PlantRecommendation data) => json.encode(data.toJson());

class PlantRecommendation {
  PlantRecommendation({
    required this.id,
    required this.v,
    required this.description,
    required this.duration,
    required this.plant,
    required this.procedure,
    required this.type,
    required this.image,
  });

  String id;
  int v;
  String description;
  String duration;
  String plant;
  String procedure;
  String type;
  String image;

  factory PlantRecommendation.fromJson(Map<String, dynamic> json) => PlantRecommendation(
        id: json["_id"],
        v: json["__v"],
        description: json["description"],
        duration: json["duration"],
        plant: json["plant"],
        procedure: json["procedure"],
        type: json["type"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "__v": v,
        "description": description,
        "duration": duration,
        "plant": plant,
        "procedure": procedure,
        "type": type,
        "image": image,
      };
}
