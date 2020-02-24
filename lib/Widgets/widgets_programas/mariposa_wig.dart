import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';

class Mariposa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Mariposa'),
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
                      .collection('mariposa_objetico')
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
                              leading: Icon(Icons.done),
                              title: Text(data['objetivo']),
                            ),
                            if (data['objetivo1'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['objetivo1']),
                              ),
                            if (data['objetivo2'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['objetivo2']),
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
