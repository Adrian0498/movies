import 'package:flutter/material.dart';
import 'package:tap2/src/screens/intenciones.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Principal :)'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Adrián Barboza Becerra'),
              accountEmail: Text('17030149@itcelaya.edu.mx'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.natacionmexico.com/portal/images/eventlist/venues/small/itc_logo_1294976207.gif'),
              ),
            ),
            ListTile(
              title: Text('Intenciones'),
              trailing: Icon(Icons.phone_android),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/intent');
                /*Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Intenciones()));*/
              },
            ),
            ListTile(
              title: Text('Conversor'),
              trailing: Icon(Icons.ac_unit_outlined),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/convert');
              },
            ),
            ListTile(
              title: Text('Peliculas'),
              trailing: Icon(Icons.movie),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/peliculas');
              },
            )
          ],
        ),
      ),
    );
  }
}
