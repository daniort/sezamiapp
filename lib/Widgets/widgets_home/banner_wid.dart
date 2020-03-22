import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class MyBanner extends StatefulWidget {
  @override
  _MyBannerState createState() => _MyBannerState();
}

class _MyBannerState extends State<MyBanner> {
  final all_url = [];
  final all_url_mini = [];

  @override
  void initState() {
    _getAllImagesPeq();
    _getAllImages();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return new Carousel(
      dotColor: Colors.white,
      dotBgColor: Colors.red.withOpacity(0.5),
      images: [
        for (var x in all_url_mini)
          InkWell(
            onTap: () => {
              showModalBottomSheet(
                  elevation: (queryData.size.height),
                  backgroundColor: Colors.white.withOpacity(0.0),
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return newCarrusel();
                  }),
            },
            child: Container(
              child: Image.asset('$x'),
            ),
          ),
      ],
    );
  }

  newCarrusel() {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        child: Carousel(
          dotColor: Colors.white,
          dotBgColor: Colors.red.withOpacity(0.5),
          images: [
            for (var x in all_url)
              InkWell(
                child: Container(
                  //child: Image.asset('$x'),
                  child: Image.asset(x.toString()),
                ),
              ),
          ],
        ),
      ),
    );
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
}
