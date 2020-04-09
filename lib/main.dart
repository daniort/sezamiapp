import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/widgets_home/banner_wid.dart';
import 'package:sezamiapp/Widgets/widgets_home/botones_wig.dart';
import 'Widgets/footer_wig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEZAMI Digital',
      theme: ThemeData(
        primaryColor: Color(0xFF0076a6),
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  Image actionIcon = new Image.asset(
    "images/icons/ic_.png",
    width: 45,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEZAMI Digital'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 0.0, left: 0.0, right: 20.0),
            child: actionIcon,
          ),
        ],
      ),
      body: new Stack(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(top: 0.0),
            child: new Container(
              height: ((MediaQuery.of(context).size.height) * .20),
              width: MediaQuery.of(context).size.width,
              child: Scrollbar(child: MiBanner()),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(
                top: ((MediaQuery.of(context).size.height) * .20)),
            child: new Container(
              height: ((MediaQuery.of(context).size.height) * .62),
              width: MediaQuery.of(context).size.width,
              child: MisBotonesHome(),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(
                top: ((MediaQuery.of(context).size.height) * .82)),
            child: new Container(
              height: ((MediaQuery.of(context).size.height) * .08),
              width: MediaQuery.of(context).size.width,
              child: Footer(),
            ),
          ),
        ],
      ),
    );
  }
}
