import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/widget_directorio/SEZAMI_wid.dart';
import 'package:sezamiapp/main.dart';

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

}