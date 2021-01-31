import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        //Imagen de Fondo
        Container(
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage('images/FondoArbol.jpg'))),
        ),
        //Para los controles de Usuario y Contraseña
        Card(
          color: Colors.white70,
          margin: EdgeInsets.all(30.0),
          elevation: 10.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      hintText: 'Ingrese su E-Mail',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      hintText: 'Ingrese su Contraseña',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
                SizedBox(
                  height: 10.0,
                ),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text('Validar Usuario'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    })
              ],
            ),
          ),
        ),
        Positioned(
          child: Image.asset(
            'images/regalos.png',
            width: 150,
            height: 80,
          ),
          bottom: 210,
        )
      ],
    );
  }
}
