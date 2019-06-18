import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'Acerca.dart';
import 'Cambiar.dart';
import 'Csesion.dart';



class Conf extends ListView {
  Conf({Key key}) : super(key: key);
/*
  final Acerca _acerca = new Acerca();
  final Cambiar _cambiar = new Cambiar();
  final Csesion _csesion = new Csesion();

  int pageIndex = 0;
  Widget _pageChooser(int page) {
    switch (page) {
      case 0:
        return _acerca;
        break;
      case 1:
        return _cambiar;
        break;
      case 2:
        return _csesion;
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

}
@override
Widget build(BuildContext context) {
  return Scaffold(
      bottomNavigationBar: ListView(
          Icon(Icons.home, size: 30),
          Icon(Icons.history, size: 30),
          Icon(Icons.camera_alt, size: 30),
        ,

            _showPage = _pageChooser(tappedIndex);
          });
        },
      ),

}
*/
 Widget build(BuildContext context) {
    final title = 'CONFIGURACION';

    return MaterialApp(
      title: title,
      home: Scaffold(
        // No se proporciona ningún appbar al Scaffold, sólo un body con un
        // CustomScrollView
        body: CustomScrollView(
          slivers: <Widget>[
            // Agrega un app bar al CustomScrollView
            SliverAppBar(
              // Provee un título estándard
              title: Text(title),
              // Permite al usuario revelar el app bar si comienza a desplazarse
              // hacia arriba en la lista de elementos
              floating: true,
              // Aumentar la altura inicial de la SliverAppBar más de lo normal
              expandedHeight: 20,
            ),
            // A continuación, crea un SliverList
            SliverList(
              // Para ello, se utiliza un delegado para crear elementos a medida que
              // se desplazan por la pantalla.
              delegate: SliverChildBuilderDelegate(
                // La función builder devuelve un ListTile con un título que
                // muestra el índice del elemento actual
                    (context, index) => ListTile(title: Text('Acerca de ')),
                // Construye 3 ListTiles
                childCount: 3,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
