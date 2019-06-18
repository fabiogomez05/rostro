import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  String nombre = "";
  String cedula = "";
  String Puesto = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    obtenerUsuario();
  }

  obtenerUsuario() {
    Firestore.instance.collection("usuario").document("04736596258").get().then((snapshot) {
      snapshot.data.forEach((k, v) {
        if(k == "Puesto") {
          Puesto = v;
        }if(k == "cedula") {
          cedula = v;
        }if(k == "nombre") {
          nombre = v;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PERFIL"),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: <Widget>[
              Text("UCATECI"),
//              IMG
              Text(Puesto),
              Text(nombre),
              Text(cedula),
            ],
          ),
        ),
      ),
    );
  }
}
