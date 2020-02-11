import 'package:flutter/material.dart';

class Sezami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('SEZAMI')),
            body: Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    ExpansionTile(
                      title: Text(
                        'José Juan Estrada Hernández',
                      ),
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.people),
                          title: Text('Secretario'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Ext. 37100'),
                        ),
                        ListTile(
                          leading: Icon(Icons.mail),
                          title: Text('jose.estrada@zacatecas.gob.mx'),
                        ),
                      ],
                    ),
                         ExpansionTile(
                      title: Text(
                        'Javier de León Rivera',
                      ),
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.people),
                          title: Text('Secretario Particular'),
                        ),
                        ListTile(
                          leading: Icon(Icons.phone),
                          title: Text('Ext. 37111'),
                        ),
                        ListTile(
                          leading: Icon(Icons.mail),
                          title: Text('javisleonri@hotmail.com'),
                          onTap: () => {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )));
  }
}
