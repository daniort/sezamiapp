import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';

class Exbraceros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Ex Braceros'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                //color: Colors.lightGreen,
                height: ((MediaQuery.of(context).size.height) * .4),
                width: MediaQuery.of(context).size.width,
                child: StreamBuilder(
                  stream: Firestore.instance
                      .collection('exbracero_objetivo')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    List<DocumentSnapshot> docs = snapshot.data.documents;
                    docs.sort((a, b) {
                      return a['titulo']
                          .toLowerCase()
                          .compareTo(b['titulo'].toLowerCase());
                    });
                    return ListView.builder(
                      itemCount: (docs.length),
                      itemBuilder: (context, index) {
                        Map<String, dynamic> data = docs[index].data;

                        return ExpansionTile(
                          backgroundColor: Color(0x1D605e5f),
                          //trailing: Icon(Icons.arrow_drop_down),
                          title: Text(
                            data['titulo'],
                            style: TextStyle(
                                color: Color(0xFF262626),
                                fontWeight: FontWeight.bold),
                          ),
                          children: <Widget>[
                            ListTile(
                              title: Text(data['general']),
                            ),


                            if (data['especifico'] != null)
                              ListTile(
                                
                                title: Text(data['especifico']),
                              ),



                              
                            if (data['1'] != null)
                              Container(
                              width: (queryData.size.width),
                              height: (queryData.size.height) * 0.08,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Center(
                                        child: Text(
                                      '·',
                                      style: TextStyle(fontSize: 50.0),
                                    )),
                                  ),
                                  Expanded(
                                    flex: 6,
                                    child: Container(
                                      child: Text(
                                        data['1'],
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            //color: Colors.blueGrey,
                                            fontSize: 16.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            if (data['2'] != null)
                              ListTile(
                                leading: Icon(Icons.done, size: 20),
                                title: Text(data['2']),
                              ),
             
                           
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            Container(
              //height: ((MediaQuery.of(context).size.height) * .07),
              //width: MediaQuery.of(context).size.width,
              child: Footer(),
            ),
          ],
        ),
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
                'EX BRACERO:',
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
            'Solicitud dirigida al C. Gobernador',
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
            'Identificación Oficial',
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
            'C.U.R.P. y R.F.C.',
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
            'Documento original que acredite que fue Ex bracero',
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
            'Acta de Nacimiento',
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
            'Carta bajo protesta de decir verdad',
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
