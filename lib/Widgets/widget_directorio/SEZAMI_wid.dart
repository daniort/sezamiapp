import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:url_launcher/url_launcher.dart';

class Sezami extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('no se ejecuto $command');
    }
  }

  Image actionIcon = new Image.asset("images/icons/ico21.png",
      width: 40, color: Color(0xff252526));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SEZAMI'),
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
            Expanded(
              child: Container(
                //color: Colors.lightGreen,
                width: MediaQuery.of(context).size.width,
                child: StreamBuilder(
                  stream: Firestore.instance
                      .collection('directorio_sezami')
                      .snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }

                    List<DocumentSnapshot> docs = snapshot.data.documents;

                    docs.sort((a, b) {
                      return a['num'].compareTo(b['num']);
                    });
                    return ListView.builder(
                      itemCount: (docs.length),
                      itemBuilder: (context, index) {
                        Map<String, dynamic> data = docs[index].data;
                        //data['num'].sort();

                        return ExpansionTile(
                          backgroundColor: Color(0x1D605e5f),
                          title: Text(
                            data['nombre'],
                            style: TextStyle(
                                color: Color(0xFF262626),
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(data['area']),
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.phone),
                              title: Text('492 49 15000 ' +
                                  ' Ext: ' +
                                  data['extension']),
                              onTap: () {
                                customLaunch('tel:+4924915000');
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.mail),
                              title: Text(data['correo']),
                              onTap: () {
                                String text =
                                    data['correo'].replaceAll(' ', '');
                                customLaunch("mailto:$text?subject=Asunto: ");
                              },
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
              width: MediaQuery.of(context).size.width,
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
