import 'package:flutter/material.dart';

import '../utils/Routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  void initState(){
    super.initState();

    //throw Exception('Hello vous êtes Hacker');

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async{
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacementNamed(context, Routes.DashboardRoutes);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body:_body(),
    );
  }

  AppBar _appBar(){
    return AppBar(
      title: Text("Template"),
      actions: [],
    );
  }
  Widget _body(){
    return Stack(children: [
      SingleChildScrollView(child: Column(children: [
        ElevatedButton(onPressed: (){
          Navigator.pushNamed(context, Routes.RegisterRoutes, arguments: 1);
        }, child: Text('Nagigation'))
      ],))
    ],);
  }
}
