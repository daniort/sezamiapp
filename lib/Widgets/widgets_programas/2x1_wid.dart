import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class DosporUno extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuto $command');
    }
  }

  Image actionIcon = new Image.asset("images/icons/ico11.png",
      width: 40.0, color: Color(0xff252526));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inversión con Migrantes'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 0.0, left: 0.0, right: 16.0),
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
                      title: Text('Objetivo General:'),
                      subtitle: Text(
                          'Contribuir al desarrollo de infraestructura en las comunidades de origen de los migrantes que permite elevar la calidad de vida de la población y promover la vinculación con las y los zacatecanos en otras latitudes.'),
                    ),
                    ListTile(
                      title: Text('Objetivo Especifico:'),
                      subtitle: Text(
                          'Contribuir al desarrollo comunitario de las localidades de origen de los migrantes zacatecanos, apoyando el desarrollo de proyectos de infraestructura social comunitaria, servicios comunitarios y aducativos, cofinanciados por los dos órdenes de gobierno y los migrantes organizados.'),
                    )
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Criterios y Requisitos'),
                  children: <Widget>[
                    ExpansionTile(
                      title: Text(
                        'Ser migrantes mexicanos mayores de 18 años, radicados en el extranjero, organizados en una Organización de Migrantes, que cuente con Toma de Nota vigente.',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: RequisitosUno(),
                        ),
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Que la Organización de Migrantes decida apoyar un proyecto que contribuya al desarrollo de una localidad perteneciente a su municipio de origen o limítrofe ubicado en la misma entidad federativa.',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Presentar Solicitud de Apoyo para Proyecto de Infraestructura Social, Servicios Comunitarios o Educativos "debidamente llenado y firmado”.',
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 13.0),
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Que la Organización de Migrantes designe a un representante en Zacatecas, mayor de 18 años y acredite su identidad y residencia en el país.',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Indicar en la solicitud del proyecto, los datos del representante en el Estado. Anexar digitalmente identificación oficial vigente y del comprobante de domicilio del representante en Zacatecas de la Organización de Migrantes, mismo que deberá tener una antigüedad no mayor a tres meses.',
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 13.0),
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Que la Organización de Migrantes demuestre la solvencia económica para la aportación al proyecto que propone, del 100% del total de los recursos que le corresponden aportar.',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      //subtitle: RequisitosUno(),
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Indicar en la solicitud del proyecto, el monto de aportación de la Organización de Migrantes al proyecto presentado. A partir de la notificación del dictamen elegible y previo a la firma del Convenio de Concertación, la Organización de Migrantes que presente el proyecto, tendrá la obligación de demostrar que cuenta con la solvencia económica para el proyecto y demostrar la aportación de los recursos que le correspondan, dentro de los 20 días hábiles siguientes a la referida notificación. En caso de incumplimiento por parte del Club y no realice la aportación correspondiente, se aplicarán las sanciones que estipulan las leyes correspondientes, además de las sanciones que imponga el COVAM.',
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 13.0),
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Si el proyecto implica obra pública y/o acciones de construcción, rehabilitación, ampliación, instalación o equipamiento, apoyos para el aprendizaje, contar con expediente técnico.',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      //subtitle: RequisitosUno(),
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Presentar en la SECRETARÍA, el "Expediente Técnico", el cual deberá contener los documentos que se señalan en el apartado de anexos, documento número 2 “Formatos para la Integración de Expedientes Técnicos” de las presentes Reglas.',
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 13.0),
                          ),
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: Text(
                        'Si se diera el caso, que los recursos del Programa resultaran insuficientes para atender las solicitudes que cumplen con los requisitos y se encuentran solventadas las observaciones en los respectivos Expedientes Técnicos.',
                        style: TextStyle(fontSize: 15.0),
                      ),
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            'Se dará prioridad a los proyectos que estén conformados mayoritariamente por mujeres, así como a los Municipios y/o Clubes que cuenten con menor inversión asignada en cada una de las sesiones de validación del COVAM.',
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 13.0),
                          ),
                        )
                      ],
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
                    //Container(
                    // height: ((MediaQuery.of(context).size.width) * 1),
                    //child: SingleChildScrollView(
                    //child: PDF(),
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
                      title: Text('Lic. Salvador Quezada Hernández'),
                    ),
                    ListTile(
                      leading: new Icon(FontAwesomeIcons.whatsapp),
                      title: Text('Teléfono'),
                      subtitle: Text('+52 1 492 103 2849'),
                      onTap: () {
                        customLaunch(
                            "whatsapp://send?phone=+52 1 492 103 2849");
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
        Center(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Title(
              color: Colors.amber,
              child: Text(
                'Requisitos:',
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
            'Contar con Formato 3x1-C "Toma de Nota" vigente al ingreso de la solicitud de apoyo para el proyecto, emitida por el Consulado.',
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
            'Si la Toma de Nota fue emitida por una Federación, contar con la renovación de Toma de Nota que deberá ser expedida por un Consulado.',
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
            'Si la toma de nota pierde vigencia durante el trámite, ésta deberá renovarse antes de la suscripción del Convenio de Concertación. La renovación de Toma de Nota es indispensable para recibir el apoyo solicitado.',
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
            'Presentar copia de la Toma de Nota de la Federación a la que pertenece.',
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
                'Requisitos para solicitar la Toma de Nota de una Organización de Migrantes:',
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
            'Conformar un grupo de al menos 10 mexicanos mayores de 18 años de edad radicados en el extranjero, que no pertenezcan a una Organización de Migrantes con Toma de Nota vigente.',
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
            'Para acreditar el origen mexicano, cada integrante deberá contar con la Clave Única de Registro de Población (CURP).',
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
            'Para acreditar su identidad y domicilio en el extranjero, cada integrante deberá proporcionar digitalmente una identificación oficial vigente y comprobante de domicilio.',
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
            'De este grupo, se designará a una persona que funja como Presidente de la Organización de Migrantes y se establecerá una mesa directiva.',
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
            'Contar y proporcionar una cuenta de correo electrónico para la o el Presidente de la Organización de Migrantes y de cada uno de sus integrantes, con el propósito de obtener la clave de acceso al Módulo de Toma de Nota.',
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
            'Las y los mexicanos mayores de 18 años de edad radicados en el extranjero denominados migrantes interesados en participar en el Programa 2x1 Trabajando Unidos con los Migrantes, deberán solicitar su registro como Organizaciones de Migrantes o como Federación de Organizaciones de Migrantes ante los Consulados Mexicanos.',
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
            'Para el caso de clubes que estén conformados con hijos de mexicanos, que no cuenten con la Clave Única de Registro de Población (CURP), y que por esa circunstancia el Consulado les niegue el registro o Toma de Nota, podrán presentar la misma, validada por la Federación de Clubes a la que pertenezcan, anexando copia de las respectivas actas de nacimiento de los hijos.',
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
