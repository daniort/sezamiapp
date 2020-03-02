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

  var meses = [
    'Mayo',
    'Febrero',
    'Marzo',
    'Abril',
    'Mayo',
    'Junio',
    'Julio',
    'Agosto',
    'Septiembre',
    'Octubre',
    'Noviembre',
    'Diciembre'
  ];
  String dropdownValue = "UNO";
  String mes;
  @override
  void initState() {
    String mes = "Elegir...";
    nombre = TextEditingController();
    edad = TextEditingController();
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
                            child: Divider(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Center(
                                child: Text(
                              'Datos del Fallecido',
                              style: TextStyle(color: Colors.blueGrey),
                            )),
                          ),
                          Expanded(
                            child: Divider(),
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
                          color: Colors.grey[250],
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
                                color: Colors.deepOrange[100],
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 300.0,
                                      
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
                          controller: nombre,
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
                          controller: nombre,
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
                          controller: nombre,
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
                        padding: const EdgeInsets.all(2.0),
                        child: TextField(
                          controller: nombre,
                          decoration: InputDecoration(
                            labelText: 'Situación Migratoria:',
                            //icon: Icon(Icons.account_circle),
                            filled: true,
                            prefixIcon: Icon(Icons.question_answer),
                          ),
                          onSubmitted: (String textfinal) {},
                        ),
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
                              'Datos de Familiar en México',
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
                            labelText: 'Nombre de Familiar en Mex.:',
                            filled: true,
                            icon: Icon(Icons.account_circle)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Telefono:',
                            filled: true,
                            icon: Icon(Icons.phone)),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
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
                        decoration: InputDecoration(
                            labelText: 'Nombre de Familiar en EU:',
                            filled: true,
                            icon: Icon(Icons.account_circle)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Telefono:',
                            filled: true,
                            icon: Icon(Icons.phone)),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
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
                        decoration: InputDecoration(
                            labelText: 'Nombre de Funeraria en EU:',
                            filled: true,
                            icon: Icon(Icons.home)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Telefono:',
                          filled: true,
                          icon: Icon(Icons.phone),
                        ),
                        keyboardType: TextInputType.phone,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
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
                    //var nombreMay = nombre.text.toUpperCase();
                    //myPDF(nombreMay, edad.text);
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
