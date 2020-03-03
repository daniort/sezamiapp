import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:sezamiapp/Widgets/widgets_programas/tras_pdf.dart';

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
  TextEditingController situacion;
  TextEditingController nombreparmex;
  TextEditingController telparmex;
  TextEditingController nombrepareu;
  TextEditingController telpareu;
  TextEditingController nombrefune;
  TextEditingController telfune;
  TextEditingController correofune;
  TextEditingController parmex;
  TextEditingController pareu;

  var now = new DateTime.now();
  String ofi = '';
  String dropdownValue = 'Día';
  @override
  void initState() {
    nombre = TextEditingController();
    edad = TextEditingController();
    causa = TextEditingController();
    lugarmuerte = TextEditingController();
    lugarorigen = TextEditingController();
    situacion = TextEditingController();
    nombreparmex = TextEditingController();
    telparmex = TextEditingController();
    nombrepareu = TextEditingController();
    telpareu = TextEditingController();
    nombrefune = TextEditingController();
    telfune = TextEditingController();
    correofune = TextEditingController();
    pareu = TextEditingController();
    parmex = TextEditingController();
    super.initState();
  }

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
                            child: Divider(color: Colors.deepPurpleAccent,),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos del Fallecido',
                              style: TextStyle(color: Colors.deepPurpleAccent,),
                            )),
                          ),
                          Expanded(
                            child: Divider(color: Colors.deepPurpleAccent,),
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
                                //color: Colors.deepPurpleAccent,
                                width: queryData.size.width,
                                margin: EdgeInsets.only(
                                    left: (queryData.size.width) * 0.13),
                                child: Text(
                                  'Fecha del Deceso:',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey),
                                ),
                              ),
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
                                      child: Dropdowndia(),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Dropdownmes(),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Dropdownano(),
                                    ),
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
                                //color: Colors.deepPurpleAccent,
                                width: queryData.size.width,
                                margin: EdgeInsets.only(
                                    left: (queryData.size.width) * 0.13),
                                child: Text(
                                  'Fecha de Nacimiento:',
                                  style: TextStyle(
                                      fontSize: 12.0, color: Colors.grey),
                                ),
                              ),
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
                                      child: Dropdowndia(),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Dropdownmes(),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Dropdownano(),
                                    ),
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
                                      child: Dropdowntimelapse(),
                                    ),
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
                                      child: Dropdownsituacion(),
                                    ),
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
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos de Familiar en México',
                              style: TextStyle(color: Colors.deepPurpleAccent,),
                            )),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.deepPurpleAccent,
                            ),
                          ),
                        ]),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Nombre de Familiar en Mex.:',
                            filled: true,
                            icon: Icon(Icons.account_circle)),
                        controller: nombreparmex,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: telparmex,
                        decoration: InputDecoration(
                            labelText: 'Telefono:',
                            filled: true,
                            icon: Icon(Icons.phone)),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: parmex,
                        decoration: InputDecoration(
                            labelText: 'Parentesco:',
                            filled: true,
                            icon: Icon(Icons.people)),
                        onSubmitted: (String textfinal) {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Divider(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos de Familiar en EU',
                              style: TextStyle(color: Colors.blueGrey),
                            )),
                          ),
                          Expanded(
                            child: Divider(),
                          ),
                        ]),
                      ),
                      TextField(
                        controller: nombrepareu,
                        decoration: InputDecoration(
                            labelText: 'Nombre de Familiar en EU:',
                            filled: true,
                            icon: Icon(Icons.account_circle)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: telpareu,
                        decoration: InputDecoration(
                            labelText: 'Telefono:',
                            filled: true,
                            icon: Icon(Icons.phone)),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: pareu,
                        decoration: InputDecoration(
                            labelText: 'Parentesco:',
                            filled: true,
                            icon: Icon(Icons.people)),
                        onSubmitted: (String textfinal) {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Divider(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos de Funeraria en EU',
                              style: TextStyle(color: Colors.blueGrey),
                            )),
                          ),
                          Expanded(
                            child: Divider(),
                          ),
                        ]),
                      ),
                      TextField(
                        controller: nombrefune,
                        decoration: InputDecoration(
                            labelText: 'Nombre de Funeraria en EU:',
                            filled: true,
                            icon: Icon(Icons.home)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: telfune,
                        decoration: InputDecoration(
                          labelText: 'Telefono:',
                          filled: true,
                          icon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: correofune,
                        decoration: InputDecoration(
                            labelText: 'Email:',
                            filled: true,
                            icon: Icon(Icons.email)),
                        keyboardType: TextInputType.emailAddress,
                        onSubmitted: (String textfinal) {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(children: <Widget>[
                          Expanded(
                            child: Divider(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Extras:',
                              style: TextStyle(color: Colors.blueGrey),
                            )),
                          ),
                          Expanded(
                            child: Divider(),
                          ),
                        ]),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          counterText: 'No Obligatorio',
                          labelText: 'Anotaciones Extras:',
                          filled: true,
                          //  icon: Icon(Icons.account_circle),
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
                    print("-------");
                    //print(oficioServer());
                    print("-------");
                    myPDF(
                      nombre.text.toUpperCase(),
                      causa.text.toUpperCase(),
                      lugarmuerte.text.toUpperCase(),
                      lugarorigen.text.toUpperCase(),
                      situacion.text.toUpperCase(),
                      nombreparmex.text.toUpperCase(),
                      telparmex.text.toUpperCase(),
                      nombrepareu.text.toUpperCase(),
                      telpareu.text.toUpperCase(),
                      nombrefune.text.toUpperCase(),
                      telfune.text.toUpperCase(),
                      correofune.text.toUpperCase(),
                    );
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

class Dropdowntimelapse extends StatefulWidget {
  @override
  _DropdowntimelapseState createState() {
    return _DropdowntimelapseState();
  }
}

class _DropdowntimelapseState extends State<Dropdowntimelapse> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
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
            _value = value;
          });
        },
        hint: Text('Elegir...'),
        value: _value,
      ),
    );
  }
}

class Dropdowndia extends StatefulWidget {
  @override
  _DropdowndiaState createState() {
    return _DropdowndiaState();
  }
}

class _DropdowndiaState extends State<Dropdowndia> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          for (var i = 1; i < 32; i++)
            DropdownMenuItem<String>(
              child: Text('$i'),
              value: '$i',
            ),
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Text('Día'),
        value: _value,
      ),
    );
  }
}

class Dropdownmes extends StatefulWidget {
  @override
  _DropdownmesState createState() {
    return _DropdownmesState();
  }
}

class _DropdownmesState extends State<Dropdownmes> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.orange,
      width: 160,
      child: Center(
        child: DropdownButton<String>(
          items: [
            DropdownMenuItem<String>(
              child: Text('Enero'),
              value: 'Enero',
            ),
            DropdownMenuItem<String>(
              child: Text('Febrero'),
              value: 'Febrero',
            ),
            DropdownMenuItem<String>(
              child: Text('Marzo'),
              value: 'Marzo',
            ),
          ],
          onChanged: (String value) {
            setState(() {
              _value = value;
            });
          },
          hint: Text('Mes'),
          value: _value,
        ),
      ),
    );
  }
}

class Dropdownano extends StatefulWidget {
  @override
  _DropdownanoState createState() {
    return _DropdownanoState();
  }
}

class _DropdownanoState extends State<Dropdownano> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        items: [
          for (var i = 2020; i > 1950; i--)
            DropdownMenuItem<String>(
              child: Text('$i'),
              value: '$i',
            ),
        ],
        onChanged: (String value) {
          setState(() {
            _value = value;
          });
        },
        hint: Text('Año'),
        value: _value,
      ),
    );
  }
}

class Dropdownsituacion extends StatefulWidget {
  @override
  _DropdownsituacionState createState() {
    return _DropdownsituacionState();
  }
}

class _DropdownsituacionState extends State<Dropdownsituacion> {
  String _value;

  @override
  Widget build(BuildContext context) {
    return Center(
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
            _value = value;
          });
        },
        hint: Text('Select Item'),
        value: _value,
      ),
    );
  }
}
