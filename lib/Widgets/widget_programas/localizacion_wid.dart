import 'package:flutter/material.dart';

class Loacalizacion extends StatefulWidget {
  @override
  _LoacalizacionState createState() => _LoacalizacionState();
}

class _LoacalizacionState extends State<Loacalizacion>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}