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
  @override
  void initState() {
    _thisImage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      child: Text('dsfsdf'),
    );
  }

  _thisImage() async {
    final StorageReference storageRef =
        FirebaseStorage.instance.ref().child('banner');
    storageRef.listAll().then((res) {
      var items = res['items'];
      print('*******************+');
      print(items);
      print('*******************+');
    });
  }
}