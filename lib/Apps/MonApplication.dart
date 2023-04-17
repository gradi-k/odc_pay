import 'package:flutter/material.dart';

import '../utils/RouteManager.dart';
import '../utils/Routes.dart';


class MonApplication extends StatelessWidget {
  const MonApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.route,
      initialRoute: Routes.LoginRoutes,

    );
  }
}
