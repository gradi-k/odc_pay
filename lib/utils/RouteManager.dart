import 'package:flutter/material.dart';
import 'package:odc_pay/Pages/DashboardPage.dart';
import 'package:odc_pay/Pages/LoginPage.dart';
import 'package:odc_pay/Pages/OperateursPages.dart';
import 'package:odc_pay/Pages/RegisterPage.dart';
import 'package:odc_pay/Pages/ServicesPage.dart';
import 'package:odc_pay/Pages/Transaction.dart';

import 'Routes.dart';

class RoutesManager{
  static Route route(RouteSettings r){
    switch(r.name){
      case Routes.LoginRoutes:
        var args = r.arguments as String?;
        return MaterialPageRoute(builder: (_)=>LoginPage());

      case Routes.DashboardRoutes:
        return MaterialPageRoute(builder: (_)=>DashboardPage());

      case Routes.RegisterRoutes:
        var agrs =r.arguments as int;
        return MaterialPageRoute(builder: (_)=>RegisterPage());

      case Routes.OperateursRoutes:
        return MaterialPageRoute(builder: (_)=>OperateursPage());

      case Routes.ServicesRoutes:
        return MaterialPageRoute(builder: (_)=>ServicesPage());

      case Routes.TransactionRoutes :
        return MaterialPageRoute(builder: (_)=>TransactionPage());

      default:
        return MaterialPageRoute(builder: (_)=>LoginPage());
    }

  }
}