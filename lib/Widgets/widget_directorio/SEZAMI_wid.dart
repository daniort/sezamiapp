import 'dart:async';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:sezamiapp/models/sezami_model.dart';

class Sezami extends StatefulWidget {
  Sezami({Key key}) : super(key: key);

  @override
  _SezamiState createState() => _SezamiState();
}

final sezamiReference =    FirebaseDatabase.instance.reference().child('directorio_sezami');

class _SezamiState extends State<Sezami> {
  List<SezamiModel> items;
  StreamSubscription<Event> _onSezamiAddedSubscription;
  StreamSubscription<Event> _onSezamiChangedSubscription;
  @override
  void initState() {
    super.initState();
    items = new List();
    _onSezamiAddedSubscription =sezamiReference.onChildAdded.listen(_onSezamiAdd);
    _onSezamiChangedSubscription =sezamiReference.onChildChanged.listen(_onSezamiUp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sezami'),
      ),
      body: Center(
        child: Text('data'),
      ),
    );
  }
}
