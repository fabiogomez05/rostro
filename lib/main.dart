import 'dart:io';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'Inicio.dart';
import 'Historial.dart';
import 'Escan.dart';
import 'Perfil.dart';
import 'Configuracion.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;

  final Inicio _inicio = Inicio();
  final Historial _historial = new Historial();
  final Escan _escaner = new Escan();
  final Perfil _perfil = new Perfil();
  final Conf _configuracion = new Conf();

  Widget _showPage = new Inicio();

  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _inicio;
        break;
      case 1:
        return _historial;
        break;
      case 2:
        return _escaner;
        break;
      case 3:
        return _perfil;
        break;
      case 4:
        return _configuracion;
        break;
      default:
        return new Container(
          child: new Center(
            child: new Text(
              'Pagina no encontrada.',
              style: new TextStyle(fontSize: 30),
            ), //Texto
          ), //Center
        ); //Container
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          index: pageIndex,
          height: 75.0,
          items: <Widget>[
            Icon(Icons.home, size: 30),
            Icon(Icons.history, size: 30),
            Icon(Icons.camera_alt, size: 30),
            Icon(Icons.person_pin, size: 30),
            Icon(Icons.settings, size: 30),
          ],
          color: Colors.blueAccent,
          buttonBackgroundColor: Colors.blueAccent,
          backgroundColor: Colors.white,
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int tappedIndex) {
            setState(() {
              _showPage = _pageChooser(tappedIndex);
            });
          },
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: _showPage,
          ),
        ));
  }
}
