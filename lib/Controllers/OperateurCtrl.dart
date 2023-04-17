import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:odc_pay/Models/OperateurModele.dart';
import 'package:odc_pay/Models/ServicesModele.dart';


class OperateurCtrl with ChangeNotifier{
  List <OperateurModel> operateur=[];
  Map<String, List<ServicesModel>> services={};
  GetStorage? stockage;


  OperateurCtrl({this.stockage});

  reupererOperateur(){}

  reupererService(int id_op){}



}