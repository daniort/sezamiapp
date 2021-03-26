import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/widgets_metodos.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class ApostillaPage extends StatelessWidget {
  const ApostillaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apostilla de Documentos Americanos y sus requisitos'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 0.0, left: 0.0, right: 20.0),
            child: Image.asset("images/icons/ico15.png",
                width: 40, color: Color(0xff252526)),
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
                  children: [
                     ListTile(
                      subtitle: Text('Regular y establecer la operación del trámite y prestación del servicio de gestión de documentos de identidad americanos “Para facilitar la inserción de actas extranjeras para obtener la doble nacionalidad', style: TextStyle(
                        fontSize: 13
                      )),
                    ),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Requisitos'),
                  children: <Widget>[
                    requitoPrograma("Acta Americana (Versión Larga)"),
                    requitoPrograma("Acta mexicana reciente de ambos padres"),
                    requitoPrograma("CURP ambos padres"),
                    requitoPrograma("RFC (impreso) con la hoja del SAT de quien va a realizar el trámite"),
                    requitoPrograma("Comprobante de domicilio reciente"),
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Reglas de Operación'),
                  children: <Widget>[
                    ListTile(title: Row(
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
                                    'sezami.zacatecas.gob.mx/docs/lszm2021.pdf');
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
                  ],
                ),
                ExpansionTile(
                  backgroundColor: Color(0x1D605e5f),
                  title: Text('Contacto'),
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.person_pin),
                      title: Text('LAET Fuensanta Santacruz'),
                    ),
                    ListTile(
                      leading: new Icon(FontAwesomeIcons.whatsapp),
                      title: Text('Teléfono'),
                      subtitle: Text('+52 492 892 26 38'),
                      onTap: () {
                        customLaunch(
                            "whatsapp://send?phone=+524928922638");
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

    void customLaunch(command) async {
    if (await canLaunch(command))
      await launch(command);
  
  
  }

}
