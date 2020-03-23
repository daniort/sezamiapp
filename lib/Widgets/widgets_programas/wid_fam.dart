import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class Fam extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuto $command');
    }
  }

  Image actionIcon = new Image.asset("images/icons/ico13.png",
      width: 40, color: Color(0xff252526));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apoyo a Deportados'),
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
                      //title: Text(
                      //  'Reunificar a las familias separadas por la migración, así como promover la unidad de la comunidad migrante.'),
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
                        'Credencial INE',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'C.U.R.P.',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Recibo Oficial',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'R.F.C.',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Solictud al Gobernador',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Seguro Popular o Anexo 5',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Hoja de Deportación',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Proyecto Productivo',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Comprobante de Domicilio no mayor a 3 meses a la fecha de apertura del programa',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Cotización',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Constancia de Capacitación',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      title: Text(
                        'Factura a nombre de la Secretaría de Finanzas (Esta se sentraga a la SEZAMI el día que se haga entrega del apoyo)',
                        style: TextStyle(fontSize: 13.0),
                      ),
                      leading: Icon(Icons.done),
                    ),
                    ListTile(
                      subtitle: Text(
                        'FAVOR DE TRAER LOS DOCUMENTOS EN EL ORDEN LISTADO',
                        style: TextStyle(fontSize: 11.0),
                      ),
                      //leading: Icon(Icons.done),
                    ),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Beneficiarios'),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Migrantes deportados en los años 2017, 2018 y 2019',
                        style: TextStyle(fontSize: 14.0),
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Reglas de Operación'),
                  children: <Widget>[
                    ListTile(
                      //title: Text('Descargar', style:
                      //TextStyle(color:Colors.lightBlue,decoration: TextDecoration.underline, fontSize: 14.0)),
                      //leading: Icon(Icons.file_download, color: Colors.lightBlue,),
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
                            flex: 10,
                            child: InkWell(
                              onTap: () {
                                customLaunch(
                                    'http://sezami.zacatecas.gob.mx/docs/2x1.pdf');
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
                    // Container(
                    // height: ((MediaQuery.of(context).size.width) * 1),
                    // child: SingleChildScrollView(
                    //  child: PDF(),
                    //),
                    //)
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Contacto'),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person_pin),
                      title: Text('LAET. Santa Yuri Soto de la torre'),
                    ),
                    ListTile(
                      leading: new Icon(FontAwesomeIcons.whatsapp),
                      title: Text('Teléfono'),
                      subtitle: Text('+52 1 492 103 0357'),
                      onTap: () {
                        customLaunch(
                            "whatsapp://send?phone=+52 1 492 103 0357");
                      },
                    )
                  ],
                )
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
            'Contribuir a la reincorporación de los migrantes zacatecanos deportados en la vida social y productiva en sus comunidades a través de apoyos económicos para su traslado o el desarrollo de proyectos productivos.',
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
            'Apoyar a los trabajadores zacatecanos migrantes deportados o repatriados a instalar un proyecto productivo en esta Entidad con el fin de que generen ingresos.',
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
            'Apoyar a los zacatecanos migrantes que son deportados a regresar a su lugar de origen.',
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
