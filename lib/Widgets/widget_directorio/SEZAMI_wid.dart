import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';

class Sezami extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('SEZAMI'),
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
                      return a['nombre']
                          .toLowerCase()
                          .compareTo(b['nombre'].toLowerCase());
                    });
                    return ListView.builder(
                      itemCount: (docs.length) - 1,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> data = docs[index].data;

                        return ExpansionTile(
                          backgroundColor: Color(0x1D605e5f),
                          //trailing: Icon(Icons.arrow_drop_down),
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
                              title: Text('Ext: ' + data['extension']),
                            ),
                            ListTile(
                              leading: Icon(Icons.mail),
                              title: Text(data['correo']),
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
              height: ((MediaQuery.of(context).size.height) * .07),
              width: MediaQuery.of(context).size.width,
              child: Footer(),
            ),
          ],
        ),
      ),
    );
  }
}
