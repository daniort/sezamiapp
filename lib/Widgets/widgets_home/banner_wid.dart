import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:sezamiapp/services/storage/mobile_storage.dart';

class MiBanner extends StatefulWidget {
  @override
  _MiBannerState createState() => _MiBannerState();
}

class _MiBannerState extends State<MiBanner> {
  final all_url = [];
  final all_url_mini = [];
  //final String image = "image/apoBanner.jpg";
  final String image = "banner_mini/capmBanner.jpg";

  @override
  void initState() {
    //_getAllImagesPeq();
    //_getAllImages();
    _thisImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 80),
          child: Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: Text('sss'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<Widget> _getImage(BuildContext context, String image) async {
    Image m;
    await FireStorageService.loadFromStorage(context, image)
        .then((downloadUrl) {
      print('si se hizo');
      m = Image.network(
        downloadUrl.toString(),
        fit: BoxFit.scaleDown,
      );
    });

    return m;
  }

  _getAllImagesPeq() {
    Firestore.instance
        .collection('url_images_banner_mini')
        .snapshots()
        .listen((data) => data.documents.forEach((doc) {
              all_url_mini.add(doc["url"]);
            }));
  }

  _getAllImages() {
    Firestore.instance
        .collection('url_images_banner')
        .snapshots()
        .listen((data) => data.documents.forEach((doc) {
              all_url.add(doc["url"]);
            }));
  }

  _thisImage() async {
    var ref = FirebaseStorage.instance.ref().child('apoSrc.jpg');
    var location = await ref.getDownloadURL();
    print(location);
  }
}
