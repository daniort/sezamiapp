import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //const med = MediaQuery.of(context).size.wid
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return new Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0.0,
            child: Container(
              //color: Color(0xFFfed300),
              color: Color(0xFF0076a6),
              height: 50.0,
              width: queryData.size.width,
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
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              color: Color(0xFF0076a6),
              height: 6.0,
              width: queryData.size.width,
            ),
          ),
        ],
      ),
    );
  }
}
