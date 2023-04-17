// To parse this JSON data, do
//
//     final operateurModel = operateurModelFromJson(jsonString);

import 'dart:convert';

OperateurModel operateurModelFromJson(String str) => OperateurModel.fromJson(json.decode(str));

String operateurModelToJson(OperateurModel data) => json.encode(data.toJson());

class OperateurModel {
  OperateurModel({
    this.id,
    this.nom,
    this.images,
  });

  int? id;
  String? nom;
  String? images;

  factory OperateurModel.fromJson(Map<String, dynamic> json) => OperateurModel(
    id: json["id"],
    nom: json["nom"],
    images: json["images"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nom": nom,
    "images": images,
  };
}
