import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/widget_directorio/directorio_wid.dart';

class MisBotonesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return new Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.02),
              child: InkWell(
                child: Container(
                  width: (queryData.size.width) * 0.45,
                  height: (queryData.size.height) * 0.28,
                  color: Color(0xFF20b9c0),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 60.0,
                            top: 0.0,
                          ),
                          width: (queryData.size.width) * 0.30,
                          //height: 60.0,
                          decoration: BoxDecoration(
                            //color: Color(0xFFfff344f),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Image.asset('images/icons/ico1.png'),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 5.0,
                            top: 100.0,
                          ),
                          width: 90.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: new Center(
                            child: Container(
                              child: Text('Directorio'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.02),
              child: InkWell(
                child: Container(
                  width: (queryData.size.width) * 0.45,
                  height: (queryData.size.height) * 0.28,
                  color: Color(0xFF20b9c0),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 60.0,
                            top: 0.0,
                          ),
                          width: (queryData.size.width) * 0.30,
                          //height: 60.0,
                          decoration: BoxDecoration(
                            //color: Color(0xFFfff344f),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Image.asset('images/icons/ico2.png'),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 5.0,
                            top: 100.0,
                          ),
                          width: 90.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: new Center(
                            child: Container(
                              child: Text('Programas'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.02),
              child: InkWell(
                child: Container(
                  width: (queryData.size.width) * 0.45,
                  height: (queryData.size.height) * 0.28,
                  color: Color(0xFF20b9c0),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 60.0,
                            top: 0.0,
                          ),
                          width: (queryData.size.width) * 0.30,
                          //height: 60.0,
                          decoration: BoxDecoration(
                            //color: Color(0xFFfff344f),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Image.asset('images/icons/ico3.png'),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 5.0,
                            top: 100.0,
                          ),
                          width: 90.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: new Center(
                            child: Container(
                              child: Text('Servicios'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.02),
              child: InkWell(
                child: Container(
                  width: (queryData.size.width) * 0.45,
                  height: (queryData.size.height) * 0.28,
                  color: Color(0xFF20b9c0),
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 60.0,
                            top: 0.0,
                          ),
                          width: (queryData.size.width) * 0.30,
                          //height: 60.0,
                          decoration: BoxDecoration(
                            //color: Color(0xFFfff344f),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Image.asset('images/icons/ico4.png'),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(
                            bottom: 5.0,
                            top: 100.0,
                          ),
                          width: 90.0,
                          height: 30.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFffffff),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: new Center(
                            child: Container(
                              child: Text('Calendario'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
