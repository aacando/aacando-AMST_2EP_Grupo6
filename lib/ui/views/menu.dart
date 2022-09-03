import 'package:flutter/material.dart';

class Nav extends StatefulWidget{
  const Nav({Key? key}) : super(key: key);
  _NavState createState()=> _NavState();

}

class _NavState extends State<Nav>{
  void initState(){
    super.initState();
  }
  Widget build (BuildContext context){
    return Scaffold(
      bottomNavigationBar: _crearNavigationBar(),
    );
  }
  Widget _crearNavigationBar(){
    return BottomNavigationBar(unselectedItemColor: Color.fromRGBO(165, 50, 100, 0.5),
    iconSize: 20.0,
    unselectedIconTheme: IconThemeData(size: 20.0) ,
    items: [
      BottomNavigationBarItem(label:"Perfil de usuario", icon: Icon(Icons.home)),
      BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Mensajes de la red social"),
      BottomNavigationBarItem(icon: Icon(Icons.home) , label: "Cerrar sesion")
    ]);
  }
}

