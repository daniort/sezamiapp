
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
      body: Text('a')
    );
  }
}
