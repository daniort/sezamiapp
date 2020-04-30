//import 'package:carousel_pro/carousel_pro.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:sezamiapp/Widgets/widgets_home/botones_wig.dart';
import 'Widgets/footer_wig.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SEZAMI Digital',
      theme: ThemeData(
        primaryColor: Color(0xFF0076a6),
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatelessWidget {
  Image actionIcon = new Image.asset(
    "images/icons/ic_.png",
    width: 45,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEZAMI Digital'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 0.0, left: 0.0, right: 20.0),
            child: actionIcon,
          ),
        ],
      ),
      body: new Stack(
        children: <Widget>[
          new Padding(
            padding: EdgeInsets.only(top: 0.0),
            child: new Container(
              height: ((MediaQuery.of(context).size.height) * .20),
              width: MediaQuery.of(context).size.width,
              child: Scrollbar(child: MiBanner()),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(
                top: ((MediaQuery.of(context).size.height) * .20)),
            child: new Container(
              height: ((MediaQuery.of(context).size.height) * .62),
              width: MediaQuery.of(context).size.width,
              child: MisBotonesHome(),
            ),
          ),
          new Padding(
            padding: EdgeInsets.only(
                top: ((MediaQuery.of(context).size.height) * .82)),
            child: new Container(
              height: ((MediaQuery.of(context).size.height) * .08),
              width: MediaQuery.of(context).size.width,
              child: Footer(),
            ),
          ),
        ],
      ),
    );
  }
}

class MiBanner extends StatefulWidget {
  @override
  _MiBannerState createState() => _MiBannerState();
}

class _MiBannerState extends State<MiBanner> {
  var names_url = ["banner_mini/aviso.jpeg", "banner_mini/linea.jpeg"];
  var names_url_fat = [];

  @override
  void initState() {
    //urlsGet();
    //urlsGetFat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(names_url);

    return SingleChildScrollView(
          child: FutureBuilder(
          future: _getImagen(context, names_url),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done)
              print(snapshot.data);
              print('>>>>>>>>>>>>>>>>>>>>>>>>>');
            return Column(
              children: <Widget>[
                for (var item in snapshot.data) 
                  
                  Image.network('$item'),
                
              ],
            );

            if (snapshot.connectionState == ConnectionState.waiting)
              return Container(
                  height: MediaQuery.of(context).size.height / 1.25,
                  width: MediaQuery.of(context).size.width / 1.25,
                  child: CircularProgressIndicator());

            return Container();
          }),
    );
  }

  Future<Widget> _getImage(BuildContext context, String image) async {
    Image m;
    await FireStorageService.loadImage(context, image).then((downloadUrl) {
      m = Image.network(
        downloadUrl.toString(),
        fit: BoxFit.scaleDown,
      );
    });
    return m;
  }

  Future _getImagen(BuildContext context, List<String> names_url) async {
    var im = [];
    for (var item in names_url) {
      await FireStorageService.loadImage(context, item).then((downloadUrl) {
        im.add(downloadUrl.toString());
      });
    }
    return im;
  }
}

class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String image) async {
    return await FirebaseStorage.instance.ref().child(image).getDownloadURL();
  }
}
