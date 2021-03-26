import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/widgets_home/botones_wig.dart';
import 'package:sezamiapp/services/user_services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'Widgets/widgets_metodos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEZAMI Digital',
      theme: ThemeData(primaryColor: Color(0xFF0076a6)),
      home: MyHome(),
    );
  }
}

// ignore: must_be_immutable
class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('SEZAMI Digital'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Image.asset("images/icons/ic_.png", width: 45),
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          Container(
            height: 175,
            width: size.width,
            margin: EdgeInsets.only(top: 10.0),
            child: FutureBuilder(
              future: UserServices().getBannerMini(),
              builder: (context, snap) {
                if (snap.hasError)
                  return Container(
                      child: Image.asset('images/banner/cone.png'));
                switch (snap.connectionState) {
                  case ConnectionState.waiting:
                    return Center(child: CircularProgressIndicator());
                    break;
                  case ConnectionState.none:
                    return Container(
                        child: Image.asset('images/banner/cone.png'));
                    break;
                  case ConnectionState.done:
                    print('hecho');
                    if (snap.data.isEmpty)
                      return Container(
                          child: Image.asset('images/banner/cone.png'));
                    else
                      return caruselMini(snap.data);
                    break;
                  default:
                    return Container(
                        child: Image.asset('images/banner/cone.png'));
                    break;
                }
              },
            ),
          ),
          Expanded(
            child: Container(
              child: MisBotonesHome(),
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Container(
            height: 40,
            width: size.width,
            color: Color(0xFF605e5f),
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                iconFooter(
                    FontAwesomeIcons.globe, 'http://sezami.zacatecas.gob.mx/'),
                VerticalDivider(color: Colors.grey[600]),
                iconFooter(
                    FontAwesomeIcons.facebookF, 'http://www.fb.com/sezami'),
                VerticalDivider(color: Colors.grey[600]),
                iconFooter(
                    FontAwesomeIcons.twitter, 'http://www.twitter.com/_sezami'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget iconFooter(IconData ico, String url) {
    return IconButton(
      padding: EdgeInsets.symmetric(horizontal: 5),
      color: Colors.white,
      icon: new Icon(ico),
      onPressed: () {
        customLaunch(url);
      },
    );
  }

  void customLaunch(command) async {
    if (await canLaunch(command)) await launch(command);
  }
}
