import 'package:flutter/material.dart';

class Representaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            appBar: AppBar(
              title: Text('Representaciones')),
            body: Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    
                    ExpansionTile(
                      trailing: Icon(Icons.add_circle),
                      title: Text(
                        'Representante del Gobierno del Estado de Zacatecas en Illinois',
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text('Laura Vásquez'),
                        ),
                        ListTile(
                          leading: Icon(Icons.people),
                          title: Text('Presidenta de Bla Bla Bla y Asociados'),
                        ),
                        ListTile(
                          leading: Icon(Icons.mail),
                          title: Text('laura07@hotmail.com'),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('12345 Kimberly Dr. MAletta, GA. 30008'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('001-234-234-5'),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      trailing: Icon(Icons.add_circle),
                      title: Text(
                        'Representante del Gobierno del Estado de Zacatecas en Tijuana',
                      ),
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.person),
                          title: Text('Willson Smith'),
                        ),
                        ListTile(
                          leading: Icon(Icons.mail),
                          title: Text('adri_ana@hotmail.com'),
                        ),
                         ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('001-234-234-5'),
                        ),
                        ListTile(
                          leading: Icon(Icons.location_on),
                          title: Text('12345 Kimberly Dr. MAletta, GA. 30008'),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.all(3.0),
                          
                        )
                       
                      ],
                    ),
                  ],
                ),
              ),
            ));
  }
}
