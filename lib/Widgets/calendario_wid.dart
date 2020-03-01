import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';

class Calendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendario'),
      ),
      body: new Container(
          child: Center(
        child: Icon(
          Icons.build,
          size: 100.0,
          color: Colors.blueGrey,
        ),
      )),
    );
  }
}
