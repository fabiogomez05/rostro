import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Escan extends StatefulWidget {
  @override
  _EscanState createState() => _EscanState();
}

class _EscanState extends State<Escan> {
  @override
  Widget build(BuildContext context) {
    Image image1;
    File imagen;

    abrirCamara() async {
      File img = await ImagePicker.pickImage(source: ImageSource.camera);

      if (img != null) {
        //uploadFile();
        imagen = img;
        setState(() {});
      }
    }

    return new Container(
        child: new Center(
            child: new RaisedButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                child: Icon(Icons.camera_alt, size: 100.0, color: Colors.black),
                onPressed: () {
                  abrirCamara();
                })));
  }
}


