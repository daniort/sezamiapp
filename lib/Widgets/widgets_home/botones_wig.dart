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
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.0),
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
                  width: (queryData.size.width) * 0.5,
                  height: (queryData.size.height) * 0.26,
                  decoration: BoxDecoration(
                    color: Color(0xFF00e074),
                    //color: Color(0xFFf2f2f2),
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      new Center(
                        child: Container(
                          width: (queryData.size.width) * 0.35,
                          height: (queryData.size.height) * 0.20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            //color: Colors.red,
                          ),
                          child: Image.asset('images/icons/icodire.png'),
                        ),
                      ),
                      new Container(
                        width: (queryData.size.width) * 0.45,
                        height: (queryData.size.height) * 0.06,
                        decoration: BoxDecoration(
                            //color: Color(0xfff2f2f2),
                            ),
                        child: new Center(
                          child: Container(
                            child: Text(
                              'Directorio',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.black,
                              ),
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
              padding: EdgeInsets.all((queryData.size.width) * 0.0),
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
                  width: (queryData.size.width) * 0.5,
                  height: (queryData.size.height) * 0.26,
                  color: Color(0xFFfadb63),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: (queryData.size.width) * 0.30,
                          height: (queryData.size.height) * 0.20,
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
                          width: (queryData.size.width) * 0.45,
                          height: (queryData.size.height) * 0.06,
                          decoration: BoxDecoration(
                            //color: Color(0xFF006fa5),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: new Center(
                            child: Container(
                              child: Text(
                                'Programas',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23.0,
                                ),
                              ),
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
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all((queryData.size.width) * 0.0),
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
                  width: (queryData.size.width) * 0.5,
                  height: (queryData.size.height) * 0.26,
                  color: Color(0xFF00bba8),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: (queryData.size.width) * 0.30,
                          height: (queryData.size.height) * 0.20,
                          decoration: BoxDecoration(
                            //color: Color(0xFFfff344f),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Image.asset('images/icons/icosev.png'),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: (queryData.size.width) * 0.45,
                          height: (queryData.size.height) * 0.06,
                          decoration: BoxDecoration(
                            //color: Color(0xFF006fa5),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: new Center(
                            child: Container(
                              child: Text(
                                'Programas',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23.0,
                                ),
                              ),
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
              padding: EdgeInsets.all((queryData.size.width) * 0.0),
              child: InkWell(
                child: Container(
                  width: (queryData.size.width) * 0.5,
                  height: (queryData.size.height) * 0.26,
                  color: Color(0xFF766a80),
                  child: Column(
                    children: <Widget>[
                      Center(
                        child: Container(
                          width: (queryData.size.width) * 0.30,
                          height: (queryData.size.height) * 0.20,
                          decoration: BoxDecoration(
                            //color: Color(0xFFfff344f),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Image.asset('images/icons/icocal.png'),
                        ),
                      ),
                      Center(
                        child: Container(
                          width: (queryData.size.width) * 0.45,
                          height: (queryData.size.height) * 0.06,
                          decoration: BoxDecoration(
                            //color: Color(0xFF006fa5),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: new Center(
                            child: Container(
                              child: Text(
                                'Calendario',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23.0,
                                ),
                              ),
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
                            image: AssetImage("images/icons/ico17.png"),
                            color: Color(0xFF005F66),
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
                                "Asesoría Migratoria",
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
                            image: AssetImage("images/icons/ico18.png"),
                            color: Color(0xFFD67500),
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
                                "Tramite de VISA",
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
                            image: AssetImage("images/icons/ico16.png"),
                            color: Color(0xFF00709E),
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
                                "Localización de Personas",
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
                            image: AssetImage("images/icons/ico21.png"),
                            color: Color(0xFF008849),
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
                          height: (queryData.size.height) * 0.06,
                          child: Image(
                            image: AssetImage("images/icons/ico22.png"),
                            color: Color(0xFF005B9F),
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
                            image: AssetImage("images/icons/ico20.png"),
                            color: Color(0xFF009C49),
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
                            image: AssetImage("images/icons/ico10.png"),
                            color: Color(0xFF006CAB),
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
                            image: AssetImage("images/icons/ico15.png"),
                            color: Color(0xFFC85C06),
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
                            image: AssetImage("images/icons/ico13.png"),
                            color: Color(0xFFBD8F00),
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
                            image: AssetImage("images/icons/ico11.png"),
                            color: Color(0xFF8B9020),
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
                                "2x1",
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
                            image: AssetImage("images/icons/ico12.png"),
                            color: Color(0xFF005DFB),
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
                            image: AssetImage("images/icons/ico14.png"),
                            color: Color(0xFF454545),
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
