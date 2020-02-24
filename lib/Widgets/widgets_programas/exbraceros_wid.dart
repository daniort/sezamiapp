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
                              ListTile(
                                //leading: Icon(Icons.done),
                                title: Text(data['1']),
                              ),
                            if (data['2'] != null)
                              ListTile(
                                leading: Icon(Icons.done, size: 20),
                                title: Text(data['2']),
                              ),
                            if (data['3'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['3']),
                              ),
                            if (data['4'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['4']),
                              ),
                            if (data['5'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['5']),
                              ),
                            if (data['6'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['6']),
                              ),
                            if (data['10'] != null)
                              ListTile(
                                title: Text(data['10']),
                              ),
                            if (data['11'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['11']),
                              ),
                            if (data['12'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['12']),
                              ),
                            if (data['13'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['13']),
                              ),
                            if (data['14'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['14']),
                              ),
                            if (data['15'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['15']),
                              ),
                            if (data['16'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['16']),
                              ),
                            if (data['17'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['17']),
                              ),
                            if (data['18'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['18']),
                              ),
                            if (data['19'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['19']),
                              ),
                            if (data['20'] != null)
                              ListTile(
                                title: Text(data['20']),
                              ),
                            if (data['21'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['21']),
                              ),
                            if (data['22'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['22']),
                              ),
                            if (data['23'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['23']),
                              ),
                            if (data['24'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['24']),
                              ),
                            if (data['25'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['25']),
                              ),
                            if (data['26'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['26']),
                              ),
                            if (data['27'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['27']),
                              ),
                            if (data['28'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['28']),
                              ),
                            if (data['29'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['29']),
                              ),
                            if (data['30'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['30']),
                              ),
                            if (data['31'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['31']),
                              ),
                            if (data['32'] != null)
                              ListTile(
                                leading: Icon(Icons.done),
                                title: Text(data['32']),
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
