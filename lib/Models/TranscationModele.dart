// To parse this JSON data, do
//
//     final transactionModel = transactionModelFromJson(jsonString);

import 'dart:convert';

TransactionModel transactionModelFromJson(String str) => TransactionModel.fromJson(json.decode(str));

String transactionModelToJson(TransactionModel data) => json.encode(data.toJson());

class TransactionModel {
  TransactionModel({
    this.id,
    this.idClient,
    this.idService,
    this.valeur,
    this.jeton,
    this.date,
  });

  int? id;
  int? idClient;
  int? idService;
  double? valeur;
  String? jeton;
  DateTime? date;

  factory TransactionModel.fromJson(Map<String, dynamic> json) => TransactionModel(
    id: json["id"],
    idClient: json["id_client"],
    idService: json["id_service"],
    valeur: json["valeur"]?.toDouble(),
    jeton: json["jeton"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "id_client": idClient,
    "id_service": idService,
    "valeur": valeur,
    "jeton": jeton,
    "date": "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
  };
}
