import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class Corazon extends StatefulWidget {
  @override
  _CorazonState createState() => _CorazonState();
}

class _CorazonState extends State<Corazon> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuto $command');
    }
  }

  Image actionIcon = new Image.asset("images/icons/ico10.png",
      width: 40, color: Color(0xff252526));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Corazón de Plata'),
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
            child: ListView(
              children: <Widget>[
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Objetivo del Programa'),
                  initiallyExpanded: true,
                  children: <Widget>[
                    ListTile(
                      title: Text(
                          'Reunificar a las familias separadas por la migración, así como promover la unidad de la comunidad migrante.'),
                      subtitle: Obetivoscorazon(),
                    ),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Requisitos'),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Padres con hijos indocumentados en Estados Unidos',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Cualquiera de los padres debe tener cumplidos los 60 años',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Cualquiera de los padres debe haber nacido en el Estado de Zacatecas',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'El hijo deberá pertenecer a un club u organización en Estados Unidos.',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Contar con pasaporte con una vigencia mínima de seís meses.',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      //title: Obetivoscorazon(),
                      subtitle: Text(
                        'NOTA: TODOS LOS SERVICIOS SON GRATUITOS(excepto el pago de derechos de entrevista consular, este pago se realiza para poder programar la cita consular, después que se realizó el llenado de formatos en la SEZAMI).',
                        style: TextStyle(fontSize: 10.0),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Reglas de Operación'),
                  children: <Widget>[
                    ListTile(
                      title: Row(
                        children: <Widget>[
                          new Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.file_download,
                              color: Colors.lightBlue,
                            ),
                          ),
                          new Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: () {
                                customLaunch(
                                    'http://sezami.zacatecas.gob.mx/docs/rop2019.pdf');
                              },
                              child: Text('Descargar',
                                  style: TextStyle(
                                      color: Colors.lightBlue,
                                      decoration: TextDecoration.underline,
                                      fontSize: 14.0)),
                            ),
                          )
                        ],
                      ),
                    ),

                    //color: Colors.amber, SingleChildScrollView(
// height: ((MediaQuery.of(context).size.width) * 1),
                    //child: SingleChildScrollView(
                    // child: PDF(),
                    //,
                    //),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Contacto'),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person_pin),
                      title: Text('LAET Fuensanta Santacrúz'),
                    ),
                    ListTile(
                      leading: new Icon(FontAwesomeIcons.whatsapp),
                      title: Text('Teléfono'),
                      subtitle: Text('+52 1 492 892 2638'),
                      onTap: () {
                        customLaunch(
                            "whatsapp://send?phone=+52 1 492 892 2638");
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
          new Container(
            child: Footer(),
          )
        ],
      ),
    );
  }
}

class Obetivoscorazon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        ListTile(
          title: Text(
            'Obtener una visa para que los padres visiten a sus hijos en los Estados Unidos.',
            textAlign: TextAlign.left,
            style: TextStyle(
                //color: Colors.blueGrey,
                fontSize: 13.0),
          ),
        ),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        ListTile(
          title: Text(
            'Fortalecer las representaciones del Gobierno del Estado de Zacatecas en los Estados Unidos.',
            textAlign: TextAlign.left,
            style: TextStyle(
                //color: Colors.blueGrey,
                fontSize: 13.0),
          ),
        ),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        ListTile(
          title: Text(
            'Fortalecer a las Organización de Zacatecanos Migrantes, brindando beneficios a sus miembros que trabajan activamente y de manera voluntaria.',
            textAlign: TextAlign.left,
            style: TextStyle(
                //color: Colors.blueGrey,
                fontSize: 13.0),
          ),
        ),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
      ],
    );
  }
}
