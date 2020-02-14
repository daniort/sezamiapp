import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var _altura = (queryData.size.height);
    return new Container(
      color: Color(0xFFfed300),
       child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new IconButton(
                color: Colors.white,
                icon: new Icon(FontAwesomeIcons.globe),
                onPressed: () {/* Your code */},
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
                onPressed: () {/* Your code */},
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
                onPressed: () {/* Your code */},
              ),
            ],
          ),
    );
  }
}
