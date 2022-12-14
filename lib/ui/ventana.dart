
import 'package:examen_practico/colors.dart';
import 'package:examen_practico/ui/routes.dart';
import 'package:flutter/material.dart';

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super (key: key);

  State<ExampleApp> createState() => _ExampleApp();
}

class _ExampleApp extends State<ExampleApp>{
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.mainColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light),
      initialRoute: '/',
      onGenerateRoute: Routes.generateRoute,);
    //throw UnimplementedError();
  }
}


