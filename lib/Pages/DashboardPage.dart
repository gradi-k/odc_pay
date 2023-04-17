import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
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
      SingleChildScrollView(child: Column(children: [],))
    ],);
  }
}
