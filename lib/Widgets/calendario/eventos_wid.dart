import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Evento extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      height: ((MediaQuery.of(context).size.height) * 3),
      width: MediaQuery.of(context).size.width,
      child: StreamBuilder(
        stream: Firestore.instance.collection('Eventos_Calendario').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          List<DocumentSnapshot> docs = snapshot.data.documents;

          docs.sort((a, b) {
            return a['num'].compareTo(b['num']);
          });

          return ListView.builder(
            itemCount: (docs.length),
            itemBuilder: (context, index) {
              Map<String, dynamic> data = docs[index].data;
              //data['num'].sort();

              if (index == 0) {
                return ExpansionTile(
                  initiallyExpanded: true,
                  backgroundColor: Color(0x1D605e5f),
                  title: Text(
                    data['fecha'],
                    style: TextStyle(
                        color: Color(0xFF262626), fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.texture),
                      title: Text(data['evento']),
                    ),
                    if (data['observacion'] != null)
                      ListTile(
                        title: Text('Observacion'),
                        subtitle: Text(data['observacion']),
                      ),
                  ],
                );
              } else {
                return ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text(
                    data['fecha'],
                    style: TextStyle(
                        color: Color(0xFF262626), fontWeight: FontWeight.bold),
                  ),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.texture),
                      title: Text(data['evento']),
                    ),
                    if (data['observacion'] != null)
                      ListTile(
                        leading: Icon(Icons.mail),
                        title: Text('Observacion'),
                        subtitle: Text(data['observacion']),
                      ),
                  ],
                );
              }
            },
          );
        },
      ),
    );
  }
}
