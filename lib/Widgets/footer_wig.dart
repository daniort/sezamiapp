import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Color(0xFF605e5f),
      //color: Color(0xFF262626),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new IconButton(
            color: Colors.white,
            icon: new Icon(FontAwesomeIcons.globe),
            onPressed: () {
              customLaunch('http://sezami.zacatecas.gob.mx/');
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: VerticalDivider(
              color: Colors.white,
            ),
          ),
          new IconButton(
            color: Colors.white,
            icon: new Icon(FontAwesomeIcons.facebookF),
            onPressed: () {
              customLaunch('http://www.facebook.com/sezami');
            },
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: VerticalDivider(
              color: Colors.white,
            ),
          ),
          new IconButton(
            color: Colors.white,
            icon: new Icon(FontAwesomeIcons.twitter),
            onPressed: () {
              customLaunch('http://www.twitter.com/_sezami');
            },
          ),
        ],
      ),
    );
  }
}
