import 'package:flutter/material.dart';
import 'package:odc_pay/Apps/MonApplication.dart';

void main() {
  ErrorWidget.builder=(FlutterErrorDetails error){
    print(error.stack);
    return Scaffold(body: Center(child:Text('Vous êtes Hacker',) ),);
  };

  runApp(MonApplication());
}