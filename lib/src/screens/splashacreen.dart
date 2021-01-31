import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tap2/src/screens/login.dart';
import 'package:tap2/src/screens/menu.dart';

class Splashscreen extends StatefulWidget {
  Splashscreen({Key key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 10,
      navigateAfterSeconds: Login(),
      image: Image.asset('images/itc_logo_1294976207.gif'),
      title: Text(
        'Bienvenido :)',
        style: TextStyle(
            color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
      photoSize: 50.0,
      //backgroundColor: Colors.grey,
      gradientBackground: LinearGradient(
          colors: [Colors.grey, Colors.blue],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight),
      loaderColor: Colors.black,
    );
  }
}
