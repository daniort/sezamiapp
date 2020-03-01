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
      title: 'SEZAMI Digitalllll',
      theme: ThemeData(
        primaryColor: Color(0xFF0076a6),
        buttonColor: Colors.red
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
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: ((MediaQuery.of(context).size.height) * .25),
              width: MediaQuery.of(context).size.width,
              child: MiBanner(),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: MisBotonesHome(),
              ),
            ),
            Container(
              color: Colors.blue,
              height: ((MediaQuery.of(context).size.height) * .08),
              width: MediaQuery.of(context).size.width,
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
