//import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/Servicios/local_pdf%20.dart';

import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Localizacion extends StatefulWidget {
  @override
  _LocalizacionState createState() => _LocalizacionState();
}

class _LocalizacionState extends State<Localizacion> {
  TextEditingController nombre;
  TextEditingController direccion;
  TextEditingController nomsoli;
  TextEditingController parsoli;
  TextEditingController telsoli;
  TextEditingController direccionu;
  DateTime dan;
  DateTime daf;

  @override
  void initState() {
    nombre = TextEditingController();
    direccion = TextEditingController();
    direccionu = TextEditingController();
    nomsoli = TextEditingController();
    parsoli = TextEditingController();
    telsoli = TextEditingController();

    super.initState();
  }

  String mesofi;
  String numofi;

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  Image actionIcon = new Image.asset("images/icons/ico18.png",
      width: 40, color: Color(0xff252526));
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Localización de Personas'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 0.0, left: 0.0, right: 20.0),
            child: actionIcon,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          new Expanded(
            flex: 9,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: new Container(
                  //color: Colors.blueGrey,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Color(0xFF0076a6),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos de la Persona a Buscar',
                              style: TextStyle(
                                color: Color(0xFF0076a6),
                              ),
                            )),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFF0076a6),
                            ),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextFormField(
                          controller: nombre,
                          maxLength: 45,
                          decoration: InputDecoration(
                            labelText: 'Nombre:',
                            filled: true,
                            prefixIcon: Icon(Icons.account_circle),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF0F0F0),
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFF838383),
                                ),
                              )),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Icon(Icons.date_range,
                                          color: Color(0xFF838383)),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Center(
                                            child: Text(
                                          'Fecha de Nacimiento:',
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Color(0xFF838383)),
                                        ))),
                                    Expanded(
                                        flex: 4,
                                        child: FlatButton(
                                            onPressed: () {
                                              DatePicker.showDatePicker(context,
                                                  showTitleActions: true,
                                                  minTime: DateTime(5, 3, 1950),
                                                  maxTime: DateTime.now(),
                                                  onChanged: (date) {
                                                dan = date;
                                              }, onConfirm: (date) {
                                                dan = date;
                                              },
                                                  currentTime: dan,
                                                  locale: LocaleType.es);
                                            },
                                            child: Text(
                                              '$dan',
                                              style: TextStyle(
                                                  color: Color(0xff838383)),
                                            ))),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: direccion,
                          maxLength: 60,
                          decoration: InputDecoration(
                            labelText: 'Dirección:',
                            //icon: Icon(Icons.account_circle),
                            filled: true,
                            prefixIcon: Icon(Icons.location_on),
                          ),
                          onSubmitted: (String textfinal) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Color(0xFF0076a6),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos del Solicitante',
                              style: TextStyle(
                                color: Color(0xFF0076a6),
                              ),
                            )),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFF0076a6),
                            ),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: nomsoli,
                          maxLength: 45,
                          decoration: InputDecoration(
                            labelText: 'Nombre de Solicitante',
                            //icon: Icon(Icons.account_circle),
                            filled: true,
                            prefixIcon: Icon(Icons.fiber_manual_record),
                          ),
                          onSubmitted: (String textfinal) {},
                        ),
                      ),
                      TextField(
                        controller: parsoli,
                        maxLength: 18,
                        decoration: InputDecoration(
                            labelText: 'Parentesco:',
                            filled: true,
                            prefixIcon: Icon(Icons.people)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: telsoli,
                        maxLength: 10,
                        decoration: InputDecoration(
                            labelText: 'Telefono:',
                            filled: true,
                            prefixIcon: Icon(Icons.phone)),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Divider(
                              color: Color(0xFF0076a6),
                            ),
                          ),
                        ]),
                      ),
                      Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color(0xFFF0F0F0),
                              border: Border(
                                bottom: BorderSide(
                                  color: Color(0xFF838383),
                                ),
                              )),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Icon(Icons.date_range,
                                          color: Color(0xFF838383)),
                                    ),
                                    Expanded(
                                        flex: 2,
                                        child: Center(
                                            child: Text(
                                          'Fecha de Último Contacto:',
                                          style: TextStyle(
                                              fontSize: 13.0,
                                              color: Color(0xFF838383)),
                                        ))),
                                    Expanded(
                                        flex: 4,
                                        child: FlatButton(
                                            onPressed: () {
                                              DatePicker.showDatePicker(context,
                                                  showTitleActions: true,
                                                  minTime: DateTime(5, 3, 1950),
                                                  maxTime: DateTime.now(),
                                                  onChanged: (date) {
                                                daf = date;
                                              }, onConfirm: (date) {
                                                daf = date;
                                              },
                                                  currentTime: daf,
                                                  locale: LocaleType.es);
                                            },
                                            child: Text(
                                              '$daf',
                                              style: TextStyle(
                                                  color: Color(0xff838383)),
                                            ))),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      TextField(
                        controller: direccionu,
                        maxLength: 60,
                        decoration: InputDecoration(
                          labelText: 'Última ubicación conocida',
                          filled: true,
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        keyboardType: TextInputType.text,
                        onSubmitted: (String textfinal) {},
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          new Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    print(daf);
                    print(dan);
                    if (validar() == true) {
                      print('true');
                      int edad = returnaedad(dan, daf);
                      if (edad > 0) {
                        String dian = dan.day.toString();
                        String mesn = dan.month.toString();
                        String anon = dan.year.toString();
                        String diaf = daf.day.toString();
                        String mesf = daf.month.toString();
                        String anof = daf.year.toString();
                        String nofi = returnaOFI();
                        myiPDF(
                          nofi,
                          nombre.text.toUpperCase(),
                          direccion.text.toUpperCase(),
                          direccionu.text.toUpperCase(),
                          parsoli.text.toUpperCase(), ////////
                          parsoli.text.toUpperCase(), //sfdfdgfdgfdgfdg
                          telsoli.text.toUpperCase(), ////////
                          dian,
                          mesn,
                          anon,
                          diaf,
                          mesf,
                          anof,
                        );
                      } else {
                        print('error de edad');
                        _scaffoldKey.currentState.showSnackBar(SnackBar(
                          content: Text('Incongruencia de Fechas'),
                          duration: Duration(milliseconds: 1000),
                          backgroundColor: Color(0xffd1495b),
                        ));
                      }
                    }
                  },
                  child: Container(
                    width: (queryData.size.width),
                    color: Colors.blue,
                    child: Center(
                      child: Text(
                        'Enviar Solicitud',
                        style: TextStyle(color: Colors.white, fontSize: 15.0),
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  int returnaedad(DateTime dan, DateTime daf) {
    int dian = dan.day;
    int mesn = dan.month;
    int anon = dan.year;
    int diaf = daf.day;
    int mesf = daf.month;
    int anof = daf.year;
    int edad;
    if (diaf >= dian) {
      if (mesf >= mesn) {
        edad = anof - anon;
      }
    } else {
      if (mesf <= mesn) {
        edad = (anof - anon) - 1;
      } else {
        edad = anof - anon;
      }
    }
    return edad;
  }

  String returnaOFI() {
    String num;
    String mes;
    if (mesofi == DateTime.now().month.toString()) {
      print("Mismo Mes");
      innum();
      int ce = int.parse(numofi) + 1;
      num = ce.toString();
      mes = mesofi;
    } else {
      print("Mes Cambio");
      updatemes(DateTime.now().month.toString());
      resetnum();
      num = 1.toString();
      mes = DateTime.now().month.toString();
    }
    String mesletter = (retumespal(mes)).toUpperCase();
    print("$num-$mesletter");
    return "$num-$mesletter";
  }

  datan() {
    Firestore.instance
        .collection('oficio')
        .document('local')
        .get()
        .then((DocumentSnapshot ds) {
      numofi = ds['n'];
    });
  }

  datem() {
    Firestore.instance
        .collection('oficio')
        .document('local')
        .get()
        .then((DocumentSnapshot ds) {
      mesofi = ds['m'];
    });
  }

  void innum() {
    int a = (int.parse(numofi) + 1);
    Firestore.instance
        .collection('oficio')
        .document('local')
        .updateData({'n': '$a'}).then((result) {
      print("Incrementando..");
    }).catchError((onError) {
      print("onError");
    });
    datan();
  }

  void resetnum() {
    Firestore.instance
        .collection('oficio')
        .document('local')
        .updateData({"n": "0"}).then((result) {
      print("Reset");
    }).catchError((onError) {
      print("onError");
    });
    datan();
  }

  void updatemes(String a) {
    Firestore.instance
        .collection('oficio')
        .document('local')
        .updateData({"m": "$a"}).then((result) {
      print("Update M");
    }).catchError((onError) {
      print("onError");
    });
    datem();
  }

  String retumespal(String mes) {
    switch (mes) {
      case '1':
        {
          return "ene";
        }
        break;
      case '2':
        {
          return "feb";
        }
        break;
      case '3':
        {
          return "mar";
        }
        break;
      case '4':
        {
          return "apr";
        }
        break;
      case '5':
        {
          return "may";
        }
        break;
      case '6':
        {
          return "jun";
        }
        break;
      case '7':
        {
          return "jul";
        }
        break;
      case '8':
        {
          return "ago";
        }
        break;
      case '9':
        {
          return "sep";
        }
        break;
      case '10':
        {
          return "oct";
        }
        break;
      case '11':
        {
          return "nov";
        }
        break;
      case '12':
        {
          return "dic";
        }
        break;
      default:
        {
          return mes;
        }
        break;
    }
  }

  validar() {
    var _final = true;
    var _e = [];
    String b = dan.toString();
    String a = "$b";
    String c = daf.toString();
    String d = "$c";

    if (nombre.text.isEmpty) {
      _e.add('Nombre es Requerido.');
      _final = false;
    }
    if (a == 'null') {
      _e.add('Fecha de Nacimiento es Requerido.');
      _final = false;
    }

    if (direccion.text.isEmpty) {
      _e.add('Dirección es Requerido.');
      _final = false;
    }

    if (nomsoli.text.isEmpty) {
      _e.add('Nombre del Solicitante es Requerido.');
      _final = false;
    }
    if (parsoli.text.isEmpty) {
      _e.add('Parentesco del Solicitante es Requerido.');
      _final = false;
    }

    if (telsoli.text.isEmpty) {
      _e.add('Télefono del Solicitante Requerido.');
      _final = false;
    }

    if (d == 'null') {
      _e.add('Última Fecha de Contacto Requerido.');
      _final = false;
    }

    if (direccionu.text.isEmpty) {
      _e.add('Última Direccion Conocida Requerido.');
      _final = false;
    }

    print(_final);
    if (_final) {
      return true;
    } else {
      return _displaySnackBar(context, _e);
    }
  }

  _displaySnackBar(BuildContext context, List a) {
    for (int i = 0; i <= a.length; i++) {
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(a[i]),
        duration: Duration(milliseconds: 500),
        backgroundColor: Color(0xffd1495b),
      ));
    }
  }
}
