//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

class Intenciones extends StatefulWidget {
  Intenciones({Key key}) : super(key: key);

  @override
  _IntencionesState createState() => _IntencionesState();
}

class _IntencionesState extends State<Intenciones> {
  //class Intenciones extends StatelessWidget {

  final image = ImagePicker();
  String pathImage;
  @override
  Widget build(BuildContext context) {
    var img = pathImage != null
        ? ClipOval(
            child: Image.file(
            File(pathImage),
            fit: BoxFit.contain,
            height: 200,
            width: 200,
          ))
        : CircleAvatar(
            radius: 80.0,
            backgroundImage: NetworkImage(
                'https://www.muycomputer.com/wp-content/uploads/2019/12/android.jpg'),
          );

    return Scaffold(
      backgroundColor: Colors.green[300],
      appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Intenciones',
            style: TextStyle(color: Colors.black),
          )),
      body: ListView(
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(8.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                'Abrir Página Web',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text('http://www.itcelaya.edu.mx'),
                  Icon(
                    Icons.touch_app,
                    color: Colors.brown,
                    size: 18.0,
                  )
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.language),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () => abrirWeb(),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                'Llamada Telefonica',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text('4613362335'),
                  Icon(
                    Icons.touch_app,
                    color: Colors.brown,
                    size: 18.0,
                  )
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.phone_android),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () => llamadaTelefonica(),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                'Enviar SMS',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text('4613362335'),
                  Icon(
                    Icons.touch_app,
                    color: Colors.brown,
                    size: 18.0,
                  )
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.message),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () => enviarSMS(),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                'Enviar E-mail',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text('17030149@itcelaya.edu.mx'),
                  Icon(
                    Icons.touch_app,
                    color: Colors.brown,
                    size: 18.0,
                  )
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.email_outlined),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () => enviarEmail(),
            ),
          ),
          Card(
            margin: EdgeInsets.all(8.0),
            elevation: 10.0,
            child: ListTile(
              title: Text(
                'Tomar Fotografía',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text('Lanzar aplicación de la Cámara'),
                  Icon(
                    Icons.touch_app,
                    color: Colors.brown,
                    size: 18.0,
                  )
                ],
              ),
              leading: Container(
                height: 38,
                padding: EdgeInsets.only(right: 15.0),
                child: Icon(Icons.camera),
                decoration: BoxDecoration(
                    border: Border(
                        right: BorderSide(width: 1.0, color: Colors.black))),
              ),
              trailing: Icon(Icons.chevron_right),
              onTap: () => abrirCamara(),
            ),
          ),
          img
        ],
      ),
    );
  }

  abrirWeb() async {
    const url = 'http://www.itcelaya.edu.mx';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  llamadaTelefonica() async {
    const url = 'tel:4613362335';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  enviarSMS() async {
    const url = 'sms:4613362335';
    if (await canLaunch(url)) {
      await launch(url);
    }
  }

  enviarEmail() async {
    final Uri params = Uri(
        scheme: 'mailto',
        path: '17030149@itcelaya.edu.mx',
        query: 'subject=Saludos&body=Buen dia :)');
    var email = params.toString();
    if (await canLaunch(email)) {
      await launch(email);
    }
  }

  abrirCamara() async {
    final archivo = await image.getImage(source: ImageSource.camera);
    pathImage = archivo.path;
    setState(() {});
  }
}
