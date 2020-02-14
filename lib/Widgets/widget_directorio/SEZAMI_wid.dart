import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class Sezami extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuta el comando $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF0076a6),
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('SEZAMI')),
        body: Padding(
          padding: EdgeInsets.all(0.0),
          child: Stack(
            children: <Widget>[
              new Container(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      ExpansionTile(
                        title: Container(
                          child: Text("Daniel Ortiz Castro"),
                        ),
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.people),
                            title: Text('Secretario'),
                          ),
                          ListTile(
                            leading: Icon(Icons.phone),
                            title: Padding(
                              padding: EdgeInsets.only(left: 1.0),
                              child: Text('Ext. 37100'),
                            ),
                            onTap: () {
                              customLaunch('tel: 37100');
                            },
                          ),
                          ListTile(
                            leading: Icon(Icons.mail),
                            title: Text('jose.estrada@zacatecas.gob.mx'),
                            onTap: () {
                              customLaunch(
                                  'mailto:jose.estrada@zacatecas.gob.mx?subject=test%20subject&body=test%20body');
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              new Container(
                child: Footer(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
