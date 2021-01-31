import 'package:flutter/material.dart';
import 'package:tap2/src/screens/conversor.dart';
import 'package:tap2/src/screens/intenciones.dart';
import 'package:tap2/src/screens/menu.dart';
import 'package:tap2/src/screens/peliculas.dart';
import 'package:tap2/src/screens/splashacreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/intent': (context) => Intenciones(),
        '/convert': (context) => Conversor(),
        '/menu': (context) => Menu(),
        '/peliculas': (context) => Peliculas()
      },
      home: Splashscreen(),
    );
  }
}
