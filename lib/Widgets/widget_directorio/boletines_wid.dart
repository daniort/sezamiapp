import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class Boletines extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Boletines'),backgroundColor: Colors.deepOrange,),
      body: Boletin(),
    );
  }
}

class Boletin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Carousel(
      images: [
        NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/sezami.appspot.com/o/boletines%2Fboletin1.jpeg?alt=media&token=d25960db-5cea-44c4-b4e7-549dc89241b9'),
        NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/sezami.appspot.com/o/boletines%2Fboletin2.jpeg?alt=media&token=36771d51-9858-40b5-be9b-cb02955ae03c'),
        NetworkImage(
            'https://firebasestorage.googleapis.com/v0/b/sezami.appspot.com/o/boletines%2Fboletin3.jpeg?alt=media&token=a9ab8efd-97a6-456b-859a-1bec00663250')
      ],
    );
  }
}
