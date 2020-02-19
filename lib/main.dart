// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:sezamiapp/Widgets/widgets_home/banner_wid.dart';
import 'package:sezamiapp/Widgets/widgets_home/botones_wig.dart';

import 'Widgets/footer_wig.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sezami Digital'),
      ),
      body: new Stack(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(top: 0.0),
            child: new Container(
              height: ((MediaQuery.of(context).size.height) * .20),
              width: MediaQuery.of(context).size.width,
              child: MiBanner(),
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
