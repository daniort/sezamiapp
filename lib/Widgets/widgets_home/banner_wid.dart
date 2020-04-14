import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return StreamBuilder(
      stream: Firestore.instance.collection('banner_mini').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        List<DocumentSnapshot> docs = snapshot.data.documents;
        print(docs);
        return ListView.builder(
          itemCount: (docs.length),
          itemBuilder: (context, index) {
            Map<String, dynamic> data = docs[index].data;

            return ExpansionTile(
              backgroundColor: Color(0x1D605e5f),
              title: Text(
                data['name'],
                style: TextStyle(
                    color: Color(0xFF262626), fontWeight: FontWeight.bold),
              ),

              //'initiallyExpanded: true,
            );
          },
        );
      },
    );
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
