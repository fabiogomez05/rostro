import 'package:flutter/material.dart';

class Csesion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("CERRAR SESSION"),
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