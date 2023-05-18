import 'package:flutter/material.dart';

import '../screens/Authentification/authentificationPage2.dart';
import '../../notfound.dart';
import 'route_name.dart';

class CustomRoute {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    var r = MaterialPageRoute(builder: (_) => NotFoundPage());
    switch (settings.name) {
      case authentificationAdd:
        r = MaterialPageRoute(builder: (_) => AuthPage2());
        break;
    }
    return r;
  }
}
