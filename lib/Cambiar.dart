import 'package:flutter/material.dart';

class Cambiar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CAMBIAR NOMBRE"),
        ),
        body: Center(
            child: Container(
                child: Column(
                    children: <Widget>[
                      Text("Modulo En Proceso")
                    ]
                )
            )
        )
    );
  }
}