import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class SezamiModel {
  String _id;
  String _nombre;
  String _area;
  String _extension;
  String _correo;
  SezamiModel(
      this._id, this._area, this._correo, this._extension, this._nombre);
  SezamiModel.map(dynamic obj) {
    //this._id = obj['id'];
    this._nombre = obj['nombre'];
    this._area = obj['area'];
    this._extension = obj['extension'];
    this._correo = obj['correo'];
  }
  String get id => _id;
  String get nombre => _nombre;
  String get area => _area;
  String get extension => _extension;
  String get correo => _correo;

  SezamiModel.fromSnapShot(DataSnapshot snapshot){
    _id = snapshot.key;
    _nombre = snapshot.value['nombre'];
    _area = snapshot.value['area'];
    _extension = snapshot.value['extension'];
    _correo = snapshot.value['correo'];
  }

}

