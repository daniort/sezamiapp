import 'package:cloud_firestore/cloud_firestore.dart';

//import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:intl/intl.dart';
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

  int now = new DateTime.now().year.toInt();

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
  String dian;
  String mesn;
  String anon;
  String diaf;
  String mesf;
  String anof;
  final format = DateFormat("dd-MM-yyyy");
  var _fromDate;

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
                            flex: 3,
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
                                                  minTime: DateTime(5, 3,2019),
                                                  maxTime: DateTime.now(),
                                                  onChanged: (date) {
                                                print('change $date');
                                              }, onConfirm: (date) {
                                                print('confirm $date');
                                              },
                                                  currentTime: DateTime.now(),
                                                  locale: LocaleType.es);
                                            },
                                            child: Text(
                                              'show date time picker (Chinese)',
                                              style:
                                                  TextStyle(color: Colors.blue),
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
                    print(now);
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
}
