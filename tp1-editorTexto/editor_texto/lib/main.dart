import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}


//para que la pantalla cambie cuando tocamos botones tenemos que utilizar un widget de estado
//
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => build();
}

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
  
//se crea una segunda clase, algo como el “estado” de MainApp
//ahí adentro vive la variable del texto, también va el build()
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}