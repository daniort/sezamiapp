import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Sezami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('SEZAMI'),
      ),
      body: StreamBuilder(
        stream: Firestore.instance.collection('directorio_sezami').snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<DocumentSnapshot> docs = snapshot.data.documents;
          return ListView.builder(
            itemCount: (docs.length) - 1,
            itemBuilder: (context, index) {
              Map<String, dynamic> data = docs[index].data;
              return ListTile(
                leading: Text(data['nombre']),
                title: Text(data['extension']),
              );
            },
          );
        },
      ),
    );
  }
}
