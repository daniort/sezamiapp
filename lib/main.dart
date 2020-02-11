// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
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
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: Mybanner(),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: new EdgeInsets.only(top: 195.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
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
                                  
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: 150.0,
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
                        height: 200.0,
                        width: 180.0,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFF20b9c0)),
                        child: Text('hola'),
                        height: 200.0,
                        width: 180.0,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFF20b9c0)),
                        child: Text('hola'),
                        height: 200.0,
                        width: 180.0,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFF20b9c0)),
                        child: Text('hola'),
                        height: 200.0,
                        width: 180.0,
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
        AssetImage('images/images1.jpg'),
        AssetImage('images/images2.jpg'),
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
              child: Container(
                //color: Color.fromRGBO(254, 211, 0, 0),
                color: Color(0xFFfed300),
                height: 60.0,
                width: MediaQuery.of(context).size.width,
              )),
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
