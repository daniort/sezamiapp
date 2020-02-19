import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/models/sezami_model.dart';

class Sezami extends StatefulWidget {
  Sezami({Key key}) : super(key: key);

  @override
  _SezamiState createState() => _SezamiState();
}

class _SezamiState extends State<Sezami> {
  List<SezamiModel> list = new List();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sezami'),
      ),
      body: StreamBuilder(
        stream:
            Firestore.instance.collection('{directorio_sezami}').snapshots(),
        builder:
            ((BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) return CircularProgressIndicator();
          return ListView.builder(
              itemCount: snapshot.data.documents.length,
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  child: new Column(
                    children: <Widget>[
                      //new Text(snapshot.data.documents[index].title),
                      //new Text(snapshot.data.documents[index].content)
                      new Text('data')
                    ],
                  ),
                );
              });
        }),
      ),
    );
  }
}
