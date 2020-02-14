// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/widget_directorio/DIRECTORIO.dart';
import 'package:sezamiapp/Widgets/widget_directorio/SEZAMI_wid.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEZAMI',
      theme: ThemeData(
        primaryColor: Color(0xFF0076a6),
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  //final pantalla =MediaQuery.of().size.width;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sezami Digital'),
      ),
      body: new Stack(
        children: <Widget>[
          Back(),
          Container(
            //Banner
            color: Colors.blueGrey,
            height: 180.0,
            width: MediaQuery.of(context).size.width,
            child: Mybanner(),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width,
            height: 400.0,
            margin: new EdgeInsets.only(
              top: 180.0,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Directorio(),
                            ),
                          ),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF20b9c0),
                          ),
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      bottom: 60.0,
                                      top: 10.0,
                                    ),
                                    width: 120.0,
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
                          height: 160.0,
                          width: 150.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sezami(),
                            ),
                          ),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF20b9c0),
                          ),
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      bottom: 60.0,
                                      top: 10.0,
                                    ),
                                    width: 120.0,
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
                          height: 160.0,
                          width: 150.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sezami(),
                            ),
                          ),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF20b9c0),
                          ),
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      bottom: 60.0,
                                      top: 10.0,
                                    ),
                                    width: 120.0,
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
                          height: 160.0,
                          width: 150.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        onTap: () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Sezami(),
                            ),
                          ),
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF20b9c0),
                          ),
                          child: Center(
                            child: Stack(
                              children: <Widget>[
                                Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                      bottom: 60.0,
                                      top: 10.0,
                                    ),
                                    width: 120.0,
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
                          height: 160.0,
                          width: 150.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Mybanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Carousel(
      images: [
        AssetImage('images/banner/banner1.jpg'),
        AssetImage('images/banner/banner2.jpg'),
        AssetImage('images/banner/banner3.jpg'),
        //AssetImage('images/images2.jpg'),
        //AssetImage('images/images3.jpg'),
        //AssetImage('images/image119.png')
        //AssetImage('images/banner/ima2.jpeg'),
      ],
    );
  }
}

class Back extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0.0,
            child: Center(
              child: Container(              
                //color: Color.fromRGBO(254, 211, 0, 0),
                color: Color(0xFFfed300),
                height: 60.0,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Row(
                    children: <Widget>[
                        new IconButton(
                          color: Colors.white,
                          icon: new Icon(FontAwesomeIcons.globe),
                          onPressed: () {/* Your code */},
                        ),
                        new IconButton(
                          color: Colors.white,
                          icon: new Icon(FontAwesomeIcons.facebookF),
                          onPressed: () {/* Your code */},
                        ),
                        new IconButton(
                          color: Colors.white,
                          icon: new Icon(FontAwesomeIcons.twitter),
                          onPressed: () {/* Your code */},
                        )
                      ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              bottom: 0.0,
              child: Container(
                color: Color(0xFF0076a6),
                height: 6.0,
                width: MediaQuery.of(context).size.width,
              ))
        ],
      ),
    );
  }
}
