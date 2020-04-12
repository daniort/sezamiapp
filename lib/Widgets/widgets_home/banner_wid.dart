import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

class MiBanner extends StatefulWidget {
  @override
  _MiBannerState createState() => _MiBannerState();
}

class _MiBannerState extends State<MiBanner> {
  var paths = [];
  var urls = [];

  @override
  initState() {
    Firestore.instance.collection('banner_mini').snapshots().listen((data) {
      data.documents.forEach((doc) {
        print('out');
        print(doc['name']);
        setState(() {
          print(doc['name']);
          print('in');
        });
      });
    });
    _met();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("sdfh"));
  }

  Future<String> _getURL(String x) async {
    await FirebaseStorage.instance.ref().child(x).getDownloadURL().then((res) {
      setState(() {
        urls.add(res.toString());
      });
    });
  }

  void _met() {
    print('_met');
  }
}