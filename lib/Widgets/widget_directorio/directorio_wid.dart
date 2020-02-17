import 'package:flutter/material.dart';
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
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: (queryData.size.width) * 0.20,
                        child: Image.asset('images/icons/ico7.png'),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: new Center(
                          child: Container(
                            child: Text(
                              'SEZAMI',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
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
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: (queryData.size.width) * 0.20,
                        child: Image.asset('images/icons/ico7.png'),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: new Center(
                          child: Container(
                            child: Text(
                              'SEZAMI',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
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
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                        width: (queryData.size.width) * 0.20,
                        child: Image.asset('images/icons/ico7.png'),
                      ),
                    ),
                    Center(
                      child: Container(
                        child: new Center(
                          child: Container(
                            child: Text(
                              'SEZAMI',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30.0),
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
          Padding(
            padding: EdgeInsets.only(top: queryData.size.height * 0.82 ),
            child: Container(
              height: (queryData.size.height) * 0.08,
              child: Footer(),
            ),
          ),
        ],
      )
    );
  }
}
