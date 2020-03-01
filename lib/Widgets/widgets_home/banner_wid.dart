import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class MiBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Mybanner(),
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
      ],
    );
  }
}
