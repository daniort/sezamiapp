
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
  String dropdownValue = "Menos de 1 Año";
  @override
  void initState() {
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
                      TextField(
                        controller: nombre,
                        decoration: InputDecoration(
                          labelText: 'Nombre del Fallecido:',
                          icon: Icon(Icons.account_circle),
                          filled: true,
                        ),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        controller: edad,
                        decoration: InputDecoration(

                            labelText: 'Fecha de Necimiento:',
                            filled: true,
                            icon: Icon(Icons.date_range)),
                        keyboardType: TextInputType.datetime,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Fecha de Deceso:',
                            filled: true,
                            icon: Icon(Icons.date_range)),
                        keyboardType: TextInputType.datetime,
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Causa de Muerte:',
                            filled: true,
                            icon: Icon(Icons.fiber_manual_record)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Lugar del Deceso:',
                            filled: true,
                            icon: Icon(Icons.location_on)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Lugar de Origen:',
                            filled: true,
                            icon: Icon(Icons.location_on)),
                        onSubmitted: (String textfinal) {},
                      ),
                      
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Tiempo en Estados Unidos:',
                            filled: true,
                            icon: Icon(Icons.timelapse)),
                        onSubmitted: (String textfinal) {},
                      ),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'Situación Migratoria:',
                            filled: true,
                            icon: Icon(Icons.question_answer)),
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
                    //print(data.text);
                    myPDF(nombre.text,edad.text);

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

