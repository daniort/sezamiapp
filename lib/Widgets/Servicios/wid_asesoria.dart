import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';

class Asesoria extends StatefulWidget {
  @override
  _AsesoriaState createState() => _AsesoriaState();
}

class _AsesoriaState extends State<Asesoria> {
  TextEditingController nombre;
  TextEditingController direccion;
  TextEditingController tel;
  TextEditingController correo;
  TextEditingController asesoria;

  @override
  void initState() {
    nombre = TextEditingController();
    direccion = TextEditingController();
    tel = TextEditingController();
    correo = TextEditingController();
    asesoria = TextEditingController();
    super.initState();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Asesoría Migratoría'),
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
                              'Rellene los Siguientes Campos',
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
                        ),
                      ),
                      TextField(
                        controller: tel,
                        maxLength: 10,
                        decoration: InputDecoration(
                            labelText: 'Telefono:',
                            filled: true,
                            prefixIcon: Icon(Icons.phone)),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: correo,
                        decoration: InputDecoration(
                            labelText: 'Email:',
                            filled: true,
                            prefixIcon: Icon(Icons.email)),
                        keyboardType: TextInputType.emailAddress,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: asesoria,
                        maxLines: 10,
                        decoration: InputDecoration(
                            hoverColor: Colors.orange[800],
                            labelText: 'Asesoría ó Consulta:',
                            filled: true,
                            prefixIcon: Icon(Icons.receipt)),
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
            flex: 2,
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () {
                              if (validar()) {
                                String n = nombre.text.toUpperCase();
                                String d = direccion.text.toUpperCase();
                                String t = tel.text;
                                String c = correo.text.toLowerCase();
                                String ase = asesoria.text.toLowerCase();
                                String msj = '''
                                      Hola, LAET Fuensanta Santacrúz.\n ------------------ \n Consulta de Asesoria Migratoria Desde Sezami Digital Móvil.\n \nDatos:\n * $n,\n * $d,\n * $t,\n * $c,\n\nNecesito Asesoría hacerca de:\n$ase \n\n Gracias.                                      
                                      ''';
                                FlutterOpenWhatsapp.sendSingleMessage(
                                    //" 52 492 892 2638", "$msj"); //rial
                                    "52 953 189 4421",
                                    "$msj"); //pealaez
                                //"52 953 189 4421", "$msj");//mio
                              }
                            },
                            child: Container(
                              color: Color(0xff02ca53),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Text(''),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.whatsapp,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'Enviar Solicitud',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                            onTap: () async {
                              if (validar()) {
                                String n = nombre.text.toUpperCase();
                                String d = direccion.text.toUpperCase();
                                String t = tel.text;
                                String c = correo.text.toLowerCase();
                                String ase = asesoria.text.toLowerCase();
                                String msj = '''Hola, LAET Fuensanta Santacrúz.\n ------------------ \n Consulta de Asesoria Migratoria Desde Sezami Digital Móvil.\n \nDatos:\n * $n,\n * $d,\n * $t,\n * $c,\n\nNecesito Asesoría hacerca de:\n$ase \n\n De Antemano, Gracias.''';
                                final Email email = Email(
                                  body: msj,
                                  subject: 'Asesoría Migratoria de Sezami Digital Movil',
                                  recipients: ['sezami.prueba22@gmail.com'],
                                  cc: ['eduardo.rios@zacatecas.gob.mx'],
                                );
                                await FlutterEmailSender.send(email);
                              }
                            },
                            child: Container(
                              color: Color(0xfff60027),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Text(''),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.envelope,
                                          size: 30,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      child: Center(
                                        child: Text(
                                          'Enviar Solicitud',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15.0),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                )),
          ),
          new Container(
            child: Footer(),
          )
        ],
      ),
    );
  }

  validar() {
    var _final = true;
    var _e = [];

    if (nombre.text.isEmpty) {
      _e.add('Nombre es Requerido.');
      _final = false;
    }
    if (direccion.text.isEmpty) {
      _e.add('Dirección es Requerido.');
      _final = false;
    }

    if (tel.text.isEmpty) {
      _e.add('Télefono es Requerido.');
      _final = false;
    }

    if (correo.text.isNotEmpty) {
      RegExp regExp = new RegExp(r'^[^@]+@[^@]+\.[^@]+');

      if (!regExp.hasMatch(correo.toString())) {
        _scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text('Ingrese un Correo Electronico Valido.'),
          duration: Duration(milliseconds: 1500),
          backgroundColor: Color(0xffd1495b),
        ));
        _final = false;
      }
    }
    if (asesoria.text.isEmpty) {
      _e.add('Consulta vacía.');
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
        duration: Duration(milliseconds: 750),
        backgroundColor: Color(0xffd1495b),
      ));
    }
  }
}