//import 'package:carousel_pro/carousel_pro.dart';
//import 'package:cached_network_image/cached_network_image.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gesture_zoom_box/gesture_zoom_box.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:photo_view/photo_view.dart';

import 'package:sezamiapp/Widgets/widgets_home/botones_wig.dart';
import 'Widgets/footer_wig.dart';

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
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('banner_mini').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Text('Loading...');
        } else {
          final int messageCount = snapshot.data.documents.length;
          print(messageCount);
          if (messageCount >= 1) {
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
                autoPlayInterval: Duration(seconds: 12),
                autoPlayAnimationDuration: Duration(seconds: 1),
                autoPlayCurve: Curves.fastOutSlowIn,
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
                          return InkWell(
                            onTap: () => {
                              showModalBottomSheet(
                                backgroundColor: Colors.white.withOpacity(1.0),
                                context: context,
                                isScrollControlled: true,
                                builder: (context) {
                                  return StreamBuilder<QuerySnapshot>(
                                    stream: Firestore.instance
                                        .collection('banner_grande')
                                        .snapshots(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<QuerySnapshot> snapshot) {
                                      if (!snapshot.hasData) {
                                        return const Text('Loading...');
                                      } else {
                                        final int messageCount =
                                            snapshot.data.documents.length;
                                        print(messageCount);
                                        if (messageCount >= 1) {
                                          List<DocumentSnapshot> docs =
                                              snapshot.data.documents;
                                          return CarouselSlider(
                                            options: CarouselOptions(
                                              height: 400,
                                              aspectRatio: 16 / 9,
                                              viewportFraction: 0.8,
                                              initialPage: 1,
                                              enableInfiniteScroll: true,
                                              reverse: false,
                                              autoPlay: true,
                                              autoPlayInterval:
                                                  Duration(seconds: 12),
                                              autoPlayAnimationDuration:
                                                  Duration(seconds: 1),
                                              autoPlayCurve:
                                                  Curves.fastOutSlowIn,
                                              scrollDirection: Axis.horizontal,
                                            ),
                                            items: docs.map((i) {
                                              return Builder(
                                                builder:
                                                    (BuildContext context) {
                                                  Map<String, dynamic> data =
                                                      i.data;
                                                  var dire = data['name'];
                                                  final direurl =
                                                      dire.replaceAll(
                                                          "{name: ", "");
                                                  var path = "banner/$direurl";
                                                  return FutureBuilder(
                                                    future: _getImage(
                                                        context, path),
                                                    builder:
                                                        (context, snapshot) {
                                                      if (snapshot
                                                              .connectionState ==
                                                          ConnectionState.done)
                                                        return Container(
                                                          color: Colors.white,
                                                          width: MediaQuery.of(
                                                                  context)
                                                              .size
                                                              .width,
                                                          child: Stack(
                                                            children: <Widget>[
                                                              GestureZoomBox(
                                                                child:
                                                                    Container(
                                                                  child:
                                                                      snapshot
                                                                          .data,
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: InkWell(
                                                                    onTap: () {
                                                                      _saveIma(
                                                                          context,
                                                                          path);
                                                                    },
                                                                    child:
                                                                        Padding(
                                                                      padding: const EdgeInsets
                                                                              .only(
                                                                          bottom:
                                                                              15.0),
                                                                      child: Container(
                                                                          width: MediaQuery.of(context).size.width / 3,
                                                                          height: 20.0,
                                                                          color: Colors.grey[100],
                                                                          child: Center(
                                                                            child:
                                                                                Text(
                                                                              'Guardar Imagen',
                                                                              style: TextStyle(color: Colors.blueGrey),
                                                                            ),
                                                                          )),
                                                                    )),
                                                              ),
                                                            ],
                                                          ),
                                                          //child: snapshot.data,
                                                        );

                                                      if (snapshot
                                                              .connectionState ==
                                                          ConnectionState
                                                              .waiting)
                                                        return Stack(
                                                          children: <Widget>[
                                                            Image.asset(
                                                                'images/banner/recar.png'),
                                                            Center(
                                                              child:
                                                                  CircularProgressIndicator(),
                                                            )
                                                          ],
                                                        );

                                                      return Container();
                                                    },
                                                  );
                                                },
                                              );
                                            }).toList(),
                                          );
                                        } else {
                                          return Stack(
                                            children: <Widget>[
                                              Container(
                                                child: Image.asset(
                                                    'images/banner/cone.png'),
                                              ),
                                            ],
                                          );
                                        }
                                      }
                                    },
                                  );
                                },
                              ),
                            },
                            child: Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              child: snapshot.data,
                            ),
                          );

                        if (snapshot.connectionState == ConnectionState.waiting)
                          return Stack(
                            children: <Widget>[
                              Image.asset('images/banner/cone.png'),
                              Center(
                                child: CircularProgressIndicator(),
                              )
                            ],
                          );

                        return Container();
                      },
                    );
                  },
                );
              }).toList(),
            );
          } else {
            return Stack(
              children: <Widget>[
                Container(
                  child: Image.asset('images/banner/cone.png'),
                ),
              ],
            );
          }
        }
      },
    );
  }

  Future<Widget> _getImage(BuildContext context, String image) async {
    CachedNetworkImage m;
    bool result = await DataConnectionChecker().hasConnection;
    if (result) {
      await FireStorageService.loadImage(context, image).then((downloadUrl) {
        m = CachedNetworkImage(
          imageUrl: downloadUrl.toString(),
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        );
      });
      return m;
    } else {
      print('No internet :( Reason:');
      return Image.asset("images/banner/cone.png");

      //print(DataConnectionChecker().lastTryResults);
    }
  }

  Future<void> _saveIma(BuildContext context, String path) async {
    try {
      await FireStorageService.loadImage(context, path).then((downloadUrl) async {
        var imageId = await ImageDownloader.downloadImage("${downloadUrl.toString()}");
        if (imageId == null) {
          return;
        }
      });
    } catch (error) {
      print(error);
    }
  }
}

class FireStorageService extends ChangeNotifier {
  FireStorageService();
  static Future<dynamic> loadImage(BuildContext context, String image) async {
    return await FirebaseStorage.instance.ref().child(image).getDownloadURL();
  }
}
