import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class Visa extends StatefulWidget {
  @override
  _VisaState createState() => _VisaState();
}

class _VisaState extends State<Visa> {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuto $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Trámite de Visa'),
      ),
      body: Column(
        children: <Widget>[
          new Expanded(
            child: ListView(
              children: <Widget>[
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Tramites de visa'),
                  initiallyExpanded: true,
                  children: <Widget>[
                    ListTile(
                      subtitle: Text(
                          'Nosotros te ayudamos a realizar la entrevista consular, en el consulado de tu elección.'),
                    ),
                    ListTile(
                      title: Text('REQUISITOS'),
                      subtitle: Requisitos(),
                    ),
                    ListTile(
                      title: Text('NOTA: TODOS LOS SERVICIOS SON GRATUITOS'),
                    ),
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

class Requisitos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Column(
      children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Pasaporte Vigente'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Dirección en Estados Unidos'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Nombre y Teléfono de persona a quien visita'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Fecha de Nacimiento de Padres'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child:
                    Text('Nombre y dirección del lugar de trabajo o escuela'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Fecha de ingreso al trabajo o escuela'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Ingresos Mensuales'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Fecha tentativa de Viaje'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Correo electrónico y Redes Sociales'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
        Container(
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                    'Pago de derechos de entrevista consular(ESTE PAGO SE REALIZA EN EL BANCO), Tendrá que pasar 3 horas después de haber realizado el pago para poder agendar si cita en la SEZAMI.'))),
        Row(children: <Widget>[
          Expanded(child: Divider()),
        ]),
      ],
    );
  }
}
