import 'package:flutter/material.dart';

class Federaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My app title',
        home: Scaffold(
            appBar: AppBar(title: Text('Federaciones')),
            body: Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    ExpansionTile(
                      title: Text(
                        'Atlanta, GA.',
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
                      title: Text(
                        'Chicago, IL.',
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text('Will Smith'),
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
                      
                  ],
                ),
              ),
            )));
  }
}
