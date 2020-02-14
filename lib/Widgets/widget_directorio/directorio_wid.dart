import 'package:flutter/material.dart';



class Directorio extends StatefulWidget {
  @override
  _DirectorioState createState() => _DirectorioState();
}

class _DirectorioState extends State<Directorio>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sezami Digital'),
      ),
      body: new Stack(
        children: <Widget>[

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            width: MediaQuery.of(context).size.width,
            height: 400.0,
            margin: new EdgeInsets.only(
              top: 180.0,
            ),
           
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
          ),
        ],
      ),
    );
  }
}

