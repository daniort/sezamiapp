import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/widget_directorio/directorio_wid.dart';

class MisBotonesHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return new Column(
      children: <Widget>[
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.02),
              child: InkWell(
                onTap: () => {
                  showModalBottomSheet(
                      elevation: (queryData.size.height) * 0.8,
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                      //shape:
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return BotonesDirectorio();
                      }),
                },
                child: Container(
                  width: (queryData.size.width) * 0.45,
                  height: (queryData.size.height) * 0.28,
                  color: Color(0xFF20b9c0),
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
                          child: Image.asset('images/icons/icodire.png'),
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
              ),
            ),
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.02),
              child: InkWell(
                 onTap: () => {
                  showModalBottomSheet(
                      //elevation: (queryData.size.height) * .2,
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                      //shape:
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return BotonesProgramas();
                      }),
                },
                child: Container(
                  width: (queryData.size.width) * 0.45,
                  height: (queryData.size.height) * 0.28,
                  color: Color(0xFF20b9c0),
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
                          child: Image.asset('images/icons/icoprog.png'),
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
              ),
            ),
          ],
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.02),
              child: InkWell(
                onTap: () => {
                  showModalBottomSheet(
                      elevation: (queryData.size.height) * 0.8,
                      //backgroundColor: Colors.blueGrey,
                      backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                      context: context,
                      isScrollControlled: true,
                      builder: (context) {
                        return Botonesservicios();
                      }),
                },
                child: Container(
                  width: (queryData.size.width) * 0.45,
                  height: (queryData.size.height) * 0.28,
                  color: Color(0xFF20b9c0),
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
                          child: Image.asset('images/icons/icosev.png'),
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
              ),
            ),
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.02),
              child: InkWell(
                child: Container(
                  width: (queryData.size.width) * 0.45,
                  height: (queryData.size.height) * 0.28,
                  color: Color(0xFF20b9c0),
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
                          child: Image.asset('images/icons/icocal.png'),
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
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class Botonesservicios extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        //color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(30.0),
      ),
      width: queryData.size.width,
      height: (queryData.size.height) * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico7.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "Servicios",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.04,
                          child: Image(
                            image: AssetImage("images/icons/ico6.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "VISA",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico5.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "Localizar Personas",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BotonesDirectorio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        //color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(30.0),
      ),
      width: queryData.size.width,
      height: (queryData.size.height) * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico7.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "SEZAMI",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.04,
                          child: Image(
                            image: AssetImage("images/icons/ico6.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "Federaciones",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico5.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "Representaciones",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BotonesProgramas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        //color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(30.0),
      ),
      width: queryData.size.width,
      height: (queryData.size.height) * 0.6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico7.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "Corazón de Plata",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico7.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "Mariposa",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico7.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "FAM",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico7.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "3x1",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.04,
                          child: Image(
                            image: AssetImage("images/icons/ico6.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "Exbraceros",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: new InkWell(
              child: Container(
                width: (queryData.size.width) * 0.90,
                height: (queryData.size.height) * 0.08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.20,
                      child: Center(
                        child: Container(
                          width: (queryData.size.width) * 0.20,
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico5.png"),
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.60,
                      height: (queryData.size.height) * 0.08,
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            new Container(
                              height: (queryData.size.height) * 0.06,
                              child: VerticalDivider(
                                color: Colors.blueGrey,
                              ),
                            ),
                            new Container(
                              child: Text(
                                "Traslados",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.blueGrey, fontSize: 16.0),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    new Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      width: (queryData.size.width) * 0.1,
                      height: (queryData.size.height) * 0.08,
                      child: Icon(
                        Icons.chevron_right,
                        size: 40.0,
                        color: Colors.blueGrey,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
