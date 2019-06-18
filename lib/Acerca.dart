import 'package:flutter/material.dart';

class Acerca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("ACERCA DE"),
    ),
    body: Center(
    child: Container(
    child: Column(
    children: <Widget>[
    Text("Android Studio 3.4.1Build #AI-183.6156.11.34.5522156, built on May 1, 2019JRE: 1.8.0_152-release-1343-b01 amd64JVM: OpenJDK 64-Bit Server VM by JetBrains s.r.o Windows 10 10.0")
  ]
    )
    )
    )
    );
  }
}
