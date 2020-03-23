import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class Exbraceros extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuto $command');
    }
  }

  Image actionIcon = new Image.asset("images/icons/ico12.png",
      width: 40, color: Color(0xff252526));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ex Braceros'),
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
                      //title: Text(                          'Reunificar a las familias separadas por la migración, así como promover la unidad de la comunidad migrante.'),
                      subtitle: ObetivosUno(),
                    ),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Requisitos'),
                  children: <Widget>[
                    ListTile(
                      title: Text('EX BRACERO'),
                      subtitle: RequisitosUno(),
                    ),
                    ListTile(
                      title: Text('CONYUGE'),
                      subtitle: RequisitosDos(),
                    ),
                    ListTile(
                      title: Text('HIJO'),
                      subtitle: RequisitosTres(),
                    ),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Beneficiarios'),
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        'Trabajdores Ex braceros nacidos en Zacatecas, que hayan trabajado en el período 1942 - 1964.',
                        style: TextStyle(fontSize: 13.0),
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
                    //Container(
                    // height: ((MediaQuery.of(context).size.width) * 1),
                    //child: SingleChildScrollView(
                    //  child: PDF(),
                    // ),
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

class RequisitosUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Solicitud dirigida al C. Gobernador'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Identificación Oficial'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('C.U.R.P. y R.F.C.'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Documento original que acredite que fue Ex braceros'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de Nacimiento'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Carta bajo protesta de decir verdad'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
      ],
    );
  }
}

class RequisitosDos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Solicitud dirigida al C. Gobernador'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Identificación Oficial'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de Nacimiento del beneficiario'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de Nacimiento del Ex bracero'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de Matrimonio'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de defunción del Ex bracero'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('C.U.R.P. y R.F.C.'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Documento original que acredite que fue Ex bracero'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Carta bajo protesta de decir verdad'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
      ],
    );
  }
}

class RequisitosTres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Solicitud dirigida al C. Gobernador'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Identificación Oficial'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de Nacimiento del beneficiario'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de Nacimiento del Ex bracero'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de matrimonio de los padres'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Acta de defunción del Ex bracero'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('C.U.R.P. y R.F.C.'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Documento original que acredite que fue Ex bracero'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Carta bajo protesta de decir verdad'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Acta de común acuerdo entre hermanos ante dos testigos'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft, child: Text('Copias de INE'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Actas de nacimiento o de defunción en caso de estar fallecidos y dos testigos.'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
      ],
    );
  }
}

class ObetivosUno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Title(
              color: Colors.amber,
              child: Text(
                'General:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        ListTile(
          title: Text(
            'Brindar apoyo económico a Trabajadores Ex Braceros Zacatecanos, que hayan prestado sus servicios en Estados Unidos de América, durante los años 1942-1964, y que cumplan con los requisitos establecidos en las presentes Reglas de Operación o al haber fallecido a su cónyuge, concubina, concubinario, hijas e hijos.',
            textAlign: TextAlign.left,
            style: TextStyle(
                //color: Colors.blueGrey,
                fontSize: 13.0),
          ),
        ),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Title(
              color: Colors.amber,
              child: Text(
                'Específico:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        ListTile(
          title: Text(
            'Contribuir a que mejoren sus condiciones de vida. Coadyuvar económicamente a que el Trabajador Ex Bracero Zacatecano realice los trámites necesarios ante Gobierno Federal para recuperar sus ahorros.',
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
