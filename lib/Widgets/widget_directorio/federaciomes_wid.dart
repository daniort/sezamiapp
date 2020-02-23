import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';

class Federaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Federaciones'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Expanded(
              child: Container(
                //color: Colors.lightGreen,
                width: MediaQuery.of(context).size.width,
                child: StreamBuilder(
                  stream: Firestore.instance
                      .collection('directorio_federaciones')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    List<DocumentSnapshot> docs = snapshot.data.documents;
                    docs.sort((a, b) {
                      return a['federacion']
                          .toLowerCase()
                          .compareTo(b['federacion'].toLowerCase());
                    });

                    return ListView.builder(
                      itemCount: (docs.length),
                      itemBuilder: (context, index) {
                        Map<String, dynamic> data = docs[index].data;

                        return ExpansionTile(
                          backgroundColor: Color(0x1D605e5f),
                          title: Text(
                            data['federacion'],
                            style: TextStyle(
                                color: Color(0xFF262626),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(data['nombre']),
                          children: <Widget>[
                            new ListTile(
                              leading: Icon(Icons.people),
                              title: Text(data['puesto']),
                            ),
                            if (data['direccion'] != null)
                              ListTile(
                                leading: Icon(Icons.pin_drop),
                                title: Text(data['direccion']),
                              ),
                            if (data['correo'] != null)
                              ListTile(
                                leading: Icon(Icons.mail),
                                title: Text(data['correo']),
                              ),
                            if (data['correo1'] != null)
                              ListTile(
                                leading: Icon(Icons.mail),
                                title: Text(data['correo1']),
                              ),
                            if (data['celular'] != null)
                              ListTile(
                                leading: Icon(Icons.phone_iphone),
                                title: Text(data['celular']),
                              ),
                            if (data['celular1'] != null)
                              ListTile(
                                leading: Icon(Icons.phone_iphone),
                                title: Text(data['celular1']),
                              ),
                            if (data['oficina'] != null)
                              ListTile(
                                leading: Icon(Icons.phone),
                                title: Text(data['oficina']),
                              ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            new Container(
              height: ((MediaQuery.of(context).size.height) * .07),
              width: MediaQuery.of(context).size.width,
              child: Footer(),
            )
          ],
        ),
      ),
    );
  }
}
