//import 'package:carousel_pro/carousel_pro.dart';
//import 'package:cached_network_image/cached_network_image.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

//import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:sezamiapp/Widgets/widgets_home/botones_wig.dart';
import 'Widgets/footer_wig.dart';
import 'package:carousel_widget/carousel_widget.dart';
//import 'package:carousel_slider/carousel_slider.dart';

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
        elevation: 2.5,
        title: Text('SEZAMI Digital'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 0.0, left: 0.0, right: 20.0),
            child: actionIcon,
          ),
        ],
      ),
      body: new Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: new Padding(
              padding: EdgeInsets.only(top: 0.0),
              child: new Container(
                width: MediaQuery.of(context).size.width,
                //child: Scrollbar(child: MiBanner()),
                //child: Text('data'),
                child: MiBanner(),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: MisBotonesHome(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.tealAccent,
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
  var names_url = ['banner_mini/aviso.jpeg'];
  var five = "";
  var name = "";

  @override
  void initState() {
    //_getIman();
    //urlsGetFat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Firestore.instance.collection('banner_mini').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        List<DocumentSnapshot> docs = snapshot.data.documents;

        return CarouselSlider(
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
//            pauseAutoPlayOnTouch: Duration(seconds: 10),
            enlargeCenterPage: true,
  //          onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
          items: docs.map((i) {
            return Builder(
              builder: (BuildContext context) {
                Map<String, dynamic> data = i.data;
                var dire = data['name'];
                final direurl = dire.replaceAll("{name: ", "");
                var path = "banner_mini/$direurl";

                return FutureBuilder(
                  future: _getImage(context, path),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done)
                      return Container(
                        //color: Color(0xfffdfdf0),
                        color: Colors.blueGrey,

                        width: MediaQuery.of(context).size.width,
                        child: snapshot.data,
                      );

                    if (snapshot.connectionState == ConnectionState.waiting)
                      return Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: MediaQuery.of(context).size.width * 0.05,
                          child: CircularProgressIndicator());

                    return Container();
                  },
                );
              },
            );
          }).toList(),
        );
      },
    );
  }

  Future<Widget> _getImage(BuildContext context, String image) async {
    Image m;
    await FireStorageService.loadImage(context, image).then((downloadUrl) {
      m = Image.network(
        downloadUrl.toString(),
        fit: BoxFit.fitHeight,
      );
    });
    return m;
  }
}

class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String image) async {
    return await FirebaseStorage.instance.ref().child(image).getDownloadURL();
  }
}
