import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';



class FeriaPage extends StatelessWidget {
  const FeriaPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ferias binacionales de Servicios'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 0.0, left: 0.0, right: 20.0),
            child: Image.asset("images/icons/icoFBS_.png",
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
                      //title: Text(                          'Reunificar a las familias separadas por la migración, así como promover la unidad de la comunidad migrante.'),
                  subtitle: Text(
                      'Coordinar y operar las actividades de las ferias binacionales de servicios'),
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
                                    'http://sezami.zacatecas.gob.mx/docs/lszm2021.pdf');
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
                    //height: ((MediaQuery.of(context).size.width) * 1),
                    //child: SingleChildScrollView(
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
                      title: Text('ISC Carlos Eduardo Ríos Valadez'),
                    ),
                    ListTile(
                      leading: new Icon(FontAwesomeIcons.whatsapp),
                      title: Text('Teléfono'),
                      subtitle: Text('+52 492 127 34 88'),
                      onTap: () {
                        customLaunch(
                            "whatsapp://send?phone=+524921273488");
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
