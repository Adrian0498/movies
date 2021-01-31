import 'package:flutter/material.dart';

class Conversor extends StatelessWidget {
  //const Conversor({Key key}) : super(key: key);

  TextEditingController txtTemperatura = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coversor de Temperatura'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: txtTemperatura,
              decoration: InputDecoration(border: OutlineInputBorder()),
            ),
            RaisedButton(
              child: Text('Convertir °C -> °F'),
              onPressed: () {
                double gradosC = double.parse(txtTemperatura.text);
                double gradosF = gradosC * 1.8 + 32;
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Grados °C -> °F'),
                        content:
                            Text('El Resultado de la conversión es: $gradosF'),
                        actions: [
                          FlatButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cerrar'),
                          )
                        ],
                      );
                    });
              },
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
