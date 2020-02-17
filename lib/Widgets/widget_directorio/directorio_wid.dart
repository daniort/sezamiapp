import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:sezamiapp/Widgets/widget_directorio/SEZAMI_wid.dart';

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
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var _altura=queryData.size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Directorio'),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Padding(
                  padding: EdgeInsets.all((queryData.size.width) * 0.02),
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
                      height: (queryData.size.height) * 0.25,
                      color: Color(0xFF20b9c0),
                      child: Center(
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
                            child: Image.asset('images/icons/ico7.png'),
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
                                child: Text('SEZAMI'),
                              ),
                            ),
                          ),
                        )
                    ],
                  ),
                      ),
                    ),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.all((queryData.size.width) * 0.02),
                  child: InkWell(
                    onTap: () => {},
                    child: Container(
                      height: (queryData.size.height) * 0.25,
                      color: Color(0xFF20b9c0),
                      child: Row(
                        children: <Widget>[
                          new Container(
                            width: (queryData.size.width) * .70,
                            height: (queryData.size.height) * .25,
                            //color: Colors.purple,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  
                                  child: Container(
                                    //color: Colors.brown,
                                    margin: EdgeInsets.only(right: 30.0),
                                    width: (queryData.size.width) * .36,
                                    child: Image.asset('images/icons/ico6.png'),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 0.0),
                                    child: Container(
                                      width: (queryData.size.width) * .7,
                                      
                                      child: Text(
                                        'REPRESENTACIONES',
                                        style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.only(right: 0.0, left: 0.0),
                            width: (queryData.size.width) * .26,
                            height: (queryData.size.height) * 0.25,
                            //color: Colors.red,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,

                                colors: [
                                  const Color(0xFF20b9c0),
                                  const Color.fromRGBO(255, 255, 255,0.3)
                                  //const Color(0xFFFFFFEE),
                                ], // whitish to gray
                                tileMode: TileMode
                                    .repeated, // repeats the gradient over the canvas
                              ),
                            ),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: (queryData.size.height) * .17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                new Padding(
                  padding: EdgeInsets.all((queryData.size.width) * 0.02),
                  child: InkWell(
                    onTap: () => {},
                    child: Container(
                      height: (queryData.size.height) * 0.25,
                      color: Color(0xFF20b9c0),
                      child: Row(
                        children: <Widget>[
                          new Container(
                            width: (queryData.size.width) * .70,
                            height: (queryData.size.height) * .25,
                            //color: Colors.purple,
                            child: Column(
                              children: <Widget>[
                                Center(
                                  
                                  child: Container(
                                    //color: Colors.brown,
                                    margin: EdgeInsets.only(right: 30.0),
                                    width: (queryData.size.width) * .29,
                                    child: Image.asset('images/icons/ico5.png'),
                                  ),
                                ),
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 0.0),
                                    child: Container(
                                      width: (queryData.size.width) * .7,
                                      
                                      child: Text(
                                        'SEZAMI',
                                        style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 40.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.only(right: 0.0, left: 0.0),
                            width: (queryData.size.width) * .26,
                            height: (queryData.size.height) * 0.25,
                            //color: Colors.red,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,

                                colors: [
                                  const Color(0xFF20b9c0),
                                  const Color.fromRGBO(255, 255, 255,0.3)
                                  //const Color(0xFFFFFFEE),
                                ], // whitish to gray
                                tileMode: TileMode
                                    .repeated, // repeats the gradient over the canvas
                              ),
                            ),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                              size: (queryData.size.height) * .17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: queryData.size.height * 0.82),
              child: Container(
                height: (queryData.size.height) * 0.08,
                child: Footer(),
              ),
            ),
          ],
        ));
  }
}
