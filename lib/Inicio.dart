import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('INICIO'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Image(image: NetworkImage('https://www.ucateci.edu.do/images/archivos/logo/Logo-UCATECI-2.png'), fit: BoxFit.fill,),
    );
  }
}