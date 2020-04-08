//import 'package:carousel_pro/carousel_pro.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
  var names_url = [];
  var names_url_fat = [];

  @override
  void initState() {
    urlsGet();
    urlsGetFat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(names_url);

    return FutureBuilder(
      //future: urlsGet(),
      future: _calculation,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done)
          //return renderCustomCarousel();
          return CarouselSlider(
            //height: 400.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
            items: names_url.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    child: InkWell(
                      onTap: () => {
                        showModalBottomSheet(
                            backgroundColor: Colors.white.withOpacity(0.0),
                            context: context,
                            isScrollControlled: true,
                            builder: (context) {
                              return Img1(ureles: names_url_fat);
                            }),
                      },
                      child: CachedNetworkImage(
                        imageUrl: "$i",
                        placeholder: (context, url) => Center(
                          child: CircularProgressIndicator(),
                        ),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          );

        if (snapshot.connectionState == ConnectionState.waiting)
          return Center(

              //height: MediaQuery.of(context).size.height / 1.25,
              //width: MediaQuery.of(context).size.width / 1.25,

              child: CircularProgressIndicator());

        return Container();
      },
    );
  }

  Future<String> _calculation = Future<String>.delayed(
    Duration(seconds: 3),
    () => 'Data Loaded',
  );

  Future futu() async {
    var a = false;
    if (names_url.length > 0) {
      a = true;
    } else {
      a = false;
    }
    return a;
  }

  Future urlsGet() async {
    var five = "";
    var name = "";
    final StorageReference storageRef =
        FirebaseStorage.instance.ref().child('banner_mini');
    storageRef.listAll().then((res) async {
      var items = res['items'].toString();
      for (var i = 0; i < items.toString().length; i++) {
        if (five.length < 5 || five == "") {
          if (items[i] != ' ') {
            five = five + items[i];
          }
        } else {
          if (five == "name:") {
            if (items[i] != '}') {
              if (items[i] != ' ') {
                name = name + items[i];
              }
            } else {
              var path = "banner_mini/$name";
              await FirebaseStorage.instance
                  .ref()
                  .child(path)
                  .getDownloadURL()
                  .then((downloadUrl) {
                setState(() {
                  names_url.add(downloadUrl.toString());
                });
              });
              five = "";
              name = "";
            }
          } else {
            five = five.substring(1);
            five = five + items[i];
          }
        }
      }
    });
  }

  Future urlsGetFat() async {
    var tre = "";
    var nombre = "";
    final StorageReference storageRef =
        FirebaseStorage.instance.ref().child('banner');
    storageRef.listAll().then((res) async {
      var items = res['items'].toString();
      for (var i = 0; i < items.toString().length; i++) {
        if (tre.length < 5 || tre == "") {
          if (items[i] != ' ') {
            tre = tre + items[i];
          }
        } else {
          if (tre == "name:") {
            if (items[i] != '}') {
              if (items[i] != ' ') {
                nombre = nombre + items[i];
              }
            } else {
              var path = "banner/$nombre";
              await FirebaseStorage.instance                  .ref()                  .child(path)                  .getDownloadURL()                  .then((downloadUrl) {                setState(() {
                  names_url_fat.add(downloadUrl.toString());
                }
                );
              });
              tre = "";
              nombre = "";
            }
          } else {
            tre = tre.substring(1);
            tre = tre + items[i];
          }
        }
      }
    });
  }
}

class Img1 extends StatelessWidget {
  var ureles = [];
  Img1({this.ureles});
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: queryData.size.width,
          height: (queryData.size.height) * .6,
          child: CarouselSlider(
            height: (queryData.size.height) * .6,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            scrollDirection: Axis.horizontal,
            items: ureles.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      decoration: BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        //child: Container(child: Center(child: Image.network('$i',width: queryData.size.width,))),
                        child: GestureZoomBox(
                          maxScale: 5.0,
                          doubleTapScale: 2.0,
                          duration: Duration(milliseconds: 200),
                          onPressed: () => Navigator.pop(context),

                          //child: Image.network('$i',width: queryData.size.width,
                          child: Center(
                            child: CachedNetworkImage(
                              imageUrl: "$i",
                              placeholder: (context, url) =>
                                  CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  Icon(Icons.error),
                            ),
                          ),
                        ),
                      ));
                },
              );
            }).toList(),
          )),
    );
  }
}




class FireStorageService extends ChangeNotifier {
  FireStorageService._();
  FireStorageService();

  static Future<dynamic> loadStorage(String image) async {
    var url = await FirebaseStorage.instance.ref().child(image).getDownloadURL();
    
    return url.toString();
  }

}