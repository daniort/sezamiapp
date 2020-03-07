//import 'dart:html';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:sezamiapp/Widgets/widgets_programas/tras_pdf.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Traslados extends StatefulWidget {
  @override
  _TrasladosState createState() => _TrasladosState();
}

class _TrasladosState extends State<Traslados> {
  TextEditingController nombre;
  TextEditingController edad;
  TextEditingController causa;
  TextEditingController lugarmuerte;
  TextEditingController lugarorigen;
  TextEditingController nombreparmex;
  TextEditingController telparmex;
  TextEditingController nombrepareu;
  TextEditingController telpareu;
  TextEditingController nombrefune;
  TextEditingController telfune;
  TextEditingController correofune;
  TextEditingController parmex;
  TextEditingController pareu;
  TextEditingController extra;
  var nofi;

  DateTime dan;
  DateTime daf;

  //var dan2 =  new DateFormat.yMMMd().format(DataTime dan);
  @override
  void initState() {
    nombre = TextEditingController();
    edad = TextEditingController();
    causa = TextEditingController();
    lugarmuerte = TextEditingController();
    lugarorigen = TextEditingController();
    nombreparmex = TextEditingController();
    telparmex = TextEditingController();
    nombrepareu = TextEditingController();
    telpareu = TextEditingController();
    nombrefune = TextEditingController();
    telfune = TextEditingController();
    correofune = TextEditingController();
    pareu = TextEditingController();
    parmex = TextEditingController();
    extra = TextEditingController();

    super.initState();
  }

  String situ;
  String time;
  String mesofi;
  String numofi;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Traslados'),
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
                            flex: 2,
                            child: Center(
                                child: Text(
                              'Datos del Fallecido',
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
                          controller: nombre,
                          decoration: InputDecoration(
                            labelText: 'Nombre del Fallecido:',
                            //icon: Icon(Icons.account_circle),
                            filled: true,
                            prefixIcon: Icon(Icons.account_circle),
                          ),
                          onSubmitted: (String textfinal) {},
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
                                          'Fecha de Deceso:',
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
                                                  minTime: DateTime(5, 3, 2019),
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
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: causa,
                          decoration: InputDecoration(
                            labelText: 'Causa de la Muerte:',
                            //icon: Icon(Icons.account_circle),
                            filled: true,
                            prefixIcon: Icon(Icons.fiber_manual_record),
                          ),
                          onSubmitted: (String textfinal) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: lugarmuerte,
                          decoration: InputDecoration(
                            labelText: 'Lugar del Deceso:',
                            //icon: Icon(Icons.account_circle),
                            filled: true,
                            prefixIcon: Icon(Icons.location_on),
                          ),
                          onSubmitted: (String textfinal) {},
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: lugarorigen,
                          decoration: InputDecoration(
                            labelText: 'Lugar del Origen:',
                            //icon: Icon(Icons.account_circle),
                            filled: true,
                            prefixIcon: Icon(Icons.location_on),
                          ),
                          onSubmitted: (String textfinal) {},
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
                                      child: Icon(Icons.timelapse,
                                          color: Color(0xFF838383)),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        'Tiempo en Estados Unidos:',
                                        style: TextStyle(
                                          color: Color(0xFF838383),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: Center(
                                          child: DropdownButton<String>(
                                            items: [
                                              DropdownMenuItem<String>(
                                                child: Text('Menos de 1 Año'),
                                                value: 'Menos de 1 Año',
                                              ),
                                              DropdownMenuItem<String>(
                                                child: Text('1 a 3 Años'),
                                                value: '1 a 3 Años',
                                              ),
                                              DropdownMenuItem<String>(
                                                child: Text('3 a 5 Años'),
                                                value: '3 a 5 Años',
                                              ),
                                              DropdownMenuItem<String>(
                                                child: Text('Más de 5 Años'),
                                                value: 'Más de 5 Años',
                                              ),
                                            ],
                                            onChanged: (String value) {
                                              setState(() {
                                                time = value;
                                              });
                                            },
                                            hint: Text('Elegir...'),
                                            value: time,
                                          ),
                                        )),
                                  ],
                                ),
                              )
                            ],
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
                                      child: Icon(Icons.timelapse,
                                          color: Color(0xFF838383)),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        'Situación Migratoria:',
                                        style: TextStyle(
                                          color: Color(0xFF838383),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 3,
                                        child: Center(
                                          child: DropdownButton<String>(
                                            items: [
                                              DropdownMenuItem<String>(
                                                child: Text('Residente'),
                                                value: 'Residente',
                                              ),
                                              DropdownMenuItem<String>(
                                                child: Text('Ciudadano'),
                                                value: 'Ciudadano',
                                              ),
                                              DropdownMenuItem<String>(
                                                child: Text('Turista'),
                                                value: 'Turista',
                                              ),
                                              DropdownMenuItem<String>(
                                                child: Text('Indocumentado'),
                                                value: 'Indocumentado',
                                              ),
                                            ],
                                            onChanged: (String value) {
                                              setState(() {
                                                situ = value;
                                              });
                                            },
                                            hint: Text('Elegir...'),
                                            value: situ,
                                          ),
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
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
                              'Datos de Familiar en México',
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
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Nombre de Familiar en Mex.:',
                            filled: true,
                            prefixIcon: Icon(Icons.account_circle)),
                        controller: nombreparmex,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: telparmex,
                        decoration: InputDecoration(
                            labelText: 'Telefono:',
                            filled: true,
                            prefixIcon: Icon(Icons.phone)),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: parmex,
                        decoration: InputDecoration(
                            labelText: 'Parentesco:',
                            filled: true,
                            prefixIcon: Icon(Icons.people)),
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
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos de Familiar en EU',
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
                      TextField(
                        controller: nombrepareu,
                        decoration: InputDecoration(
                          labelText: 'Nombre de Familiar en EU:',
                          filled: true,
                          prefixIcon: Icon(Icons.account_circle),
                        ),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: telpareu,
                        decoration: InputDecoration(
                            labelText: 'Telefono:',
                            filled: true,
                            prefixIcon: Icon(Icons.phone)),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: pareu,
                        decoration: InputDecoration(
                            labelText: 'Parentesco:',
                            filled: true,
                            prefixIcon: Icon(Icons.people)),
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
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos de Funeraria en EU',
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
                      TextField(
                        controller: nombrefune,
                        decoration: InputDecoration(
                            labelText: 'Nombre de Funeraria en EU:',
                            filled: true,
                            prefixIcon: Icon(Icons.home)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: telfune,
                        decoration: InputDecoration(
                          labelText: 'Telefono:',
                          filled: true,
                          prefixIcon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: correofune,
                        decoration: InputDecoration(
                            labelText: 'Email:',
                            filled: true,
                            prefixIcon: Icon(Icons.email)),
                        keyboardType: TextInputType.emailAddress,
                        onSubmitted: (String textfinal) {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            flex: 3,
                            child: Divider(
                              color: Color(0xFF0076a6),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Center(
                                child: Text(
                              'Extras:',
                              style: TextStyle(
                                color: Color(0xFF0076a6),
                              ),
                            )),
                          ),
                          Expanded(
                            flex: 3,
                            child: Divider(
                              color: Color(0xFF0076a6),
                            ),
                          ),
                        ]),
                      ),
                      TextField(
                        controller: extra,
                        decoration: InputDecoration(
                          counterText: 'No Obligatorio',
                          labelText: 'Anotaciones Extras:',
                          filled: true,
                        ),
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
                    //print(returnaOFI());
                    Datan();
                    
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
          new Container(
            child: Footer(),
          )
        ],
      ),
    );
  }

  String returnaedad(DateTime dan, DateTime daf) {
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
    return edad.toString();
  }

  String returnaOFI() {
    String num;
    String mes;
    if (Datem() == DateTime.now().month.toString()) {
      print("b");
      innum();
      num = Datan();
      mes = Datem();
    } else {
      print("a");
      updatemes(DateTime.now().month.toString());
      resetnum();
      num = Datan();
      mes = Datem();
    }
    return "$num//$mes";
  }

  String Datan() {
    String _b;
    DocumentReference documentReference = Firestore.instance.collection('oficio').document('traslado');    
    print(documentReference.get().toString());
  }

  String Datem() {
    String m;
    Firestore.instance
        .collection('oficio')
        .document('traslado')
        .get()
        .then((DocumentSnapshot ds) {
      m = ds['m'];
    });
    print(m);
  }

  void innum() {
    int a = (int.parse(Datan()) + 1);
    Firestore.instance
        .collection('oficio')
        .document('traslado')
        .updateData({'n': '$a'}).then((result) {
      print("Incrementando..");
    }).catchError((onError) {
      print("onError");
    });
  }

  void resetnum() {
    Firestore.instance
        .collection('oficio')
        .document('traslado')
        .updateData({"n": "1"}).then((result) {
      print("Reset");
    }).catchError((onError) {
      print("onError");
    });
  }

  void updatemes(String a) {
    Firestore.instance
        .collection('oficio')
        .document('traslado')
        .updateData({"m": "$a"}).then((result) {
      print("Update M");
    }).catchError((onError) {
      print("onError");
    });
  }
}
