// To parse this JSON data, do
//
//     final servicesModel = servicesModelFromJson(jsonString);

import 'dart:convert';

ServicesModel servicesModelFromJson(String str) => ServicesModel.fromJson(json.decode(str));

String servicesModelToJson(ServicesModel data) => json.encode(data.toJson());

class ServicesModel {
  ServicesModel({
    this.id,
    this.nom,
    this.images,
    this.description,
    this.idOperateur,
  });

  int? id;
  String? nom;
  String? images;
  String? description;
  int? idOperateur;

  factory ServicesModel.fromJson(Map<String, dynamic> json) => ServicesModel(
    id: json["id"],
    nom: json["nom"],
    images: json["images"],
    description: json["description"],
    idOperateur: json["id_operateur"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nom": nom,
    "images": images,
    "description": description,
    "id_operateur": idOperateur,
  };
}
