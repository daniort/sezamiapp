import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sezami extends StatelessWidget {

  void customLaunch(command) async{
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuta el comando $command');
    }
  }
  
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
                          onTap: (){
                            customLaunch('tel: 37100');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.mail),
                          title: Text('jose.estrada@zacatecas.gob.mx'),
                          onTap: (){
                            customLaunch('mailto:jose.estrada@zacatecas.gob.mx?subject=test%20subject&body=test%20body');
                          },
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
