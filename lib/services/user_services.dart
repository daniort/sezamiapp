import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UserServices {
  final Firestore _db = Firestore.instance;

  Future getBannerBig() async {
  try {
      final all = await _db.collection('banner_grande').getDocuments();
    print(all.documents);
    List<String> handles = new List();
    for (var item in all.documents) {
      String _urlD = await FirebaseStorage.instance
          .ref()
          .child("banner/${item.data['name']}")
          .getDownloadURL();
      handles.add(_urlD);
    }
    print(handles);
    return handles;
  } catch (e) {
    print(e);
    return [];
  }
  }
  // gs://sezami-8f3b5.appspot.com/banner/apoSrc.jpg))((&&))

  Future<List> getBannerMini() async {
    final all = await _db.collection('banner_mini').getDocuments();
    List<String> handles = new List();
    for (var item in all.documents) {
      String _urlD = await FirebaseStorage.instance
          .ref()
          .child("banner_mini/${item.data['name']}")
          .getDownloadURL();
      handles.add(_urlD);
    }
    print(handles);
    return handles;
  }
 
  

}
