import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';
import 'package:flutter_open_whatsapp/flutter_open_whatsapp.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class Representaciones extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuto $command');
    }
  }

  Image actionIcon = new Image.asset("images/icons/ico20.png",
      width: 40, color: Color(0xff252526));
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Representaciones'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                top: 0.0, bottom: 0.0, left: 0.0, right: 20.0),
            child: actionIcon,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            new Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: StreamBuilder(
                  stream: Firestore.instance
                      .collection('directorio_representaciones')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    List<DocumentSnapshot> docs = snapshot.data.documents;
                    docs.sort((a, b) {
                      return a['representacion']
                          .toLowerCase()
                          .compareTo(b['representacion'].toLowerCase());
                    });

                    return ListView.builder(
                      itemCount: (docs.length),
                      itemBuilder: (context, index) {
                        Map<String, dynamic> data = docs[index].data;
                        var dire = data['direccion'];
                        final direurl = dire.replaceAll(" ", "+");
                        return ExpansionTile(
                          backgroundColor: Color(0x1D605e5f),
                          title: Text(
                            data['representacion'],
                            style: TextStyle(
                                color: Color(0xFF262626),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(data['nombre']),
                          //'initiallyExpanded: true,
                          children: <Widget>[
                            if (data['correo'] != null)
                              ListTile(
                                leading: Icon(Icons.mail),
                                title: Text(data['correo']),
                                onTap: () {
                                  customLaunch('mailto:' +
                                      data['correo'] +
                                      '?subject=Asunto: ');
                                },
                              ),
                            if (data['correo1'] != null)
                              ListTile(
                                leading: Icon(Icons.mail),
                                title: Text(data['correo1']),
                                onTap: () {
                                  customLaunch('mailto:' +
                                      data['correo1'] +
                                      '?subject=Asunto: ');
                                },
                              ),
                            ListTile(
                              leading: Icon(Icons.pin_drop),
                              title: Text(data['direccion']),
                              onTap: () {
                                customLaunch(
                                    'https://www.google.com/maps/search/?api=1&query=$direurl&z=20&q=32.534916,-117.017154');
                              },
                            ),
                            if (data['img'] != null)
                              ListTile(
                                title: Container(
                                  //color: Colors.red,
                                  height:
                                      ((MediaQuery.of(context).size.height) *
                                          0.2),
                                  child: Image.network(
                                    data['img'],
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),
                                onTap: () {
                                  customLaunch(
                                      'https://www.google.com/maps/search/?api=1&query=$direurl&z=20&q=32.534916,-117.017154');
                                },
                              ),
                            if (data['celular'] != null)
                              ListTile(
                                leading: Icon(Icons.phone_iphone),
                                title: Text(data['celular']),
                                onTap: () => {
                                  showModalBottomSheet(
                                      elevation: (queryData.size.height) * 0.6,
                                      backgroundColor:
                                          Color.fromRGBO(0, 0, 0, 0),
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        var phone = data['celular'];
                                        return BotomModal(data: phone);
                                      }),
                                },
                              ),
                            if (data['celular1'] != null)
                              ListTile(
                                leading: Icon(Icons.phone_iphone),
                                title: Text(data['celular1']),
                                onTap: () => {
                                  showModalBottomSheet(
                                      elevation: (queryData.size.height) * 0.6,
                                      backgroundColor:
                                          Color.fromRGBO(0, 0, 0, 0),
                                      context: context,
                                      isScrollControlled: true,
                                      builder: (context) {
                                        var phone = data['celular1'];
                                        return BotomModal(data: phone);
                                      }),
                                },
                              ),
                            if (data['postal'] != null)
                              ListTile(
                                leading: Icon(Icons.contact_mail),
                                title: Text('CP: ' + data['postal']),
                              ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            new Container(
              height: ((MediaQuery.of(context).size.height) * .07),
              width: MediaQuery.of(context).size.width,
              child: Footer(),
            )
          ],
        ),
      ),
    );
  }
}

class BotomModal extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuto $command');
    }
  }

  final data;
  BotomModal({this.data});
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFffffff),
        borderRadius: BorderRadius.circular(30.0),
      ),
      width: queryData.size.width,
      height: (queryData.size.height) * 0.35,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Expanded(
            child: Container(
              width: (queryData.size.width) * 0.80,
              child: Column(
                children: <Widget>[
                  new Expanded(
                    flex: 1,
                    child: Container(
                      height: (queryData.size.height) * 0.08,
                      child: Center(
                        child: Text(
                          'Abrir con...',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  new Expanded(
                    flex: 3,
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          new Expanded(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  new Expanded(
                                    flex: 2,
                                    child: InkWell(
                                      onTap: () {
                                        final direurl =
                                            data.replaceAll("+", "");
                                        final direurl2 =
                                            direurl.replaceAll("-", "");
                                        final direurl3 =
                                            direurl2.replaceAll(" ", "");
                                        final direurl4 =
                                            direurl3.replaceAll("(", "");
                                        final direurl5 =
                                            direurl4.replaceAll(")", "");
                                        print(direurl5);
                                        FlutterOpenWhatsapp.sendSingleMessage(
                                            "$direurl5", " ");
                                        //customLaunch(
                                        //  "whatsapp://send?phone=$data");
                                      },
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.whatsappSquare,
                                          size: 60.0,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                  ),
                                  new Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Center(
                                        child: Text('WhatsApp'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          new Expanded(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  new Expanded(
                                    flex: 2,
                                    child: InkWell(
                                      onTap: () {
                                        customLaunch("tel:+$data");
                                      },
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.phoneSquare,
                                          size: 60.0,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                  new Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Center(
                                        child: Text('Teléfono'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          new Expanded(
                            child: Container(
                              child: Column(
                                children: <Widget>[
                                  new Expanded(
                                    flex: 2,
                                    child: InkWell(
                                      onTap: () {
                                        var string = '$data';
                                        var a = string.substring(1);
                                        var b = a.substring(1);
                                        customLaunch("sms:$a");
                                      },
                                      child: Center(
                                        child: Icon(
                                          FontAwesomeIcons.sms,
                                          size: 60.0,
                                          color: Colors.orange,
                                        ),
                                      ),
                                    ),
                                  ),
                                  new Expanded(
                                    flex: 1,
                                    child: Container(
                                      child: Center(
                                        child: Text('SMS'),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: (queryData.size.height) * 0.1,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  width: (queryData.size.width) * 0.70,
                  height: (queryData.size.height) * 0.06,
                  decoration: BoxDecoration(
                      color: Color(0x1D605e5f),
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Center(
                    child: Text('Cancelar'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
