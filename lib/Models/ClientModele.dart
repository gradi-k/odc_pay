// To parse this JSON data, do
//
//     final clientModel = clientModelFromJson(jsonString);

import 'dart:convert';

ClientModel clientModelFromJson(String str) => ClientModel.fromJson(json.decode(str));

String clientModelToJson(ClientModel data) => json.encode(data.toJson());

class ClientModel {
  ClientModel({
    this.id,
    this.nom,
    this.genre,
    this.email,
    this.phone,
    this.idUser,
    this.adresse,
  });

  int? id;
  String? nom;
  String? genre;
  String? email;
  String? phone;
  int? idUser;
  String? adresse;

  factory ClientModel.fromJson(Map<String, dynamic> json) => ClientModel(
    id: json["id"],
    nom: json["nom"],
    genre: json["genre"],
    email: json["email"],
    phone: json["phone"],
    idUser: json["id_user"],
    adresse: json["adresse"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "nom": nom,
    "genre": genre,
    "email": email,
    "phone": phone,
    "id_user": idUser,
    "adresse": adresse,
  };
}
