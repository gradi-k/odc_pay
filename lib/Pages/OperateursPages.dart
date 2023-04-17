import 'package:flutter/material.dart';

class OperateursPage extends StatefulWidget {
  const OperateursPage({Key? key}) : super(key: key);

  @override
  State<OperateursPage> createState() => _OperateursPageState();
}

class _OperateursPageState extends State<OperateursPage> {
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
