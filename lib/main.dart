// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

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
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.1, 0.0),
                            colors: [
                              const Color(0xff00FF70),
                              const Color(0xFF00e86e),  
                            ], // whitish to gray
                            tileMode: TileMode
                                .clamp, // repeats the gradient over the canvas
                          ),
                        ),
                        child: Text('hola'),
                        height: 200.0,
                        width: 180.0,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment(1.0, 0.0),
                            colors: [
                              const Color(0xFFfbf5bd),
                              const Color(0xFFf5e557)
                            ], // whitish to gray
                            tileMode: TileMode
                                .clamp, // repeats the gradient over the canvas
                          ),
                        ),
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
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 0.0),
                            colors: [
                              const Color(0xFF00ffbc),
                              const Color(0xFF00c8aa)
                            ], // whitish to gray
                            tileMode: TileMode
                                .clamp, // repeats the gradient over the canvas
                          ),
                        ),
                        child: Text('hola'),
                        height: 200.0,
                        width: 180.0,
                      ),
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.8, 0.0),
                            colors: [
                              const Color(0xFF9e9da0),
                              const Color(0xFF786281)
                            ], // whitish to gray
                            tileMode: TileMode
                                .clamp, // repeats the gradient over the canvas
                          ),
                        ),
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
        AssetImage('images/images3.jpg'),
        //AssetImage('images/images4.jpg')
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
