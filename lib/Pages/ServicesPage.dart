import 'package:flutter/material.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  State<ServicesPage> createState() => _ServicesPageState();
}

class _ServicesPageState extends State<ServicesPage> {
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
