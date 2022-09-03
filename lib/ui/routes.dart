
import 'package:examen_practico/ui/views/GoogleSingIn.dart';
import 'package:examen_practico/ui/views/splash.dart';
import 'package:examen_practico/ui/views/menu.dart';
import 'package:examen_practico/ui/views/splash.dart';
import 'package:flutter/material.dart';
class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashView());
      case '/login':
        return MaterialPageRoute(builder: (_) => GoogleSignIn());
      case '/menu':
        return MaterialPageRoute(builder: (_) => Nav());

      default:
        return _errorRoute();
//Aquí se irán agregando las rutas por cada clase dart creada.

  }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Error"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text("ERROR"),
        ),
      );
    });
  }
}