import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  CalendarController _calendarController;
  bool select = false;
  String even;
  String hoy;
  var eventos_es = [];
  var eventos_all = [];
  var jsonall = [];
  @override
  void initState() {
    _calendarController = CalendarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendario'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
                child: SingleChildScrollView(child: _buildTableCalendar())),
          ),
          Expanded(
              flex: 2,
              child: Container(
                child: _fun(select),
              )),
          new Container(
            color: Colors.amber,
            child: Footer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTableCalendar() {
    return TableCalendar(
      initialCalendarFormat: CalendarFormat.month,
      calendarController: _calendarController,
      startingDayOfWeek: StartingDayOfWeek.sunday,
      calendarStyle: CalendarStyle(
        selectedColor: Colors.deepOrange[400],
        todayColor: Colors.deepOrange[200],
        markersColor: Colors.brown[700],
        outsideDaysVisible: false,
      ),
      headerStyle: HeaderStyle(
        formatButtonTextStyle:
            TextStyle().copyWith(color: Colors.white, fontSize: 15.0),
        formatButtonDecoration: BoxDecoration(
          color: Colors.deepOrange[400],
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onDaySelected: _onDaySelected,
    );
  }

  _returnlistafechaseventos(String f) {
    Firestore.instance
        .collection('Eventos_Calendario')
        .snapshots()
        .listen((data) => data.documents.forEach((doc) {
              if (doc["fech"] == f) {
                eventos_es.add(doc["evento"]);
                setState(() {
                  select = true;
                });
              }
            }));
  }

  _onDaySelected(DateTime day, List events) {
    String dia = day.day.toString();
    String mes = day.month.toString();
    String anio = day.year.toString();
    String mesletra = retumespal(mes);
    String _hoy = "$dia de $mesletra del $anio";
    setState(() {
      select = false;
      hoy = _hoy;
      eventos_es = [];
    });
    _returnlistafechaseventos("$anio-$mes-$dia");
  }

  _fun(bool select) {
    if (select) {
      print(eventos_es.length);

      return SingleChildScrollView(
        child: ExpansionTile(
          initiallyExpanded: true,
          backgroundColor: Color(0x1D605e5f),
          leading: Icon(Icons.event_available, color: Color(0xff868686)),
          title: Text(hoy),
          children: <Widget>[
            //for (int i = 0; i <= eventos_es.length; i++) ListTile(title: Text(i),),
            for (var i in eventos_es)
              ListTile(
                title: Text(i),
                leading: Icon(
                  FontAwesomeIcons.solidCircle,
                  size: 15,
                ),
              ),
          ],
        ),
      );
    } else {
      return _todos_alv();
    }
  }

  String retumespal(String mes) {
    switch (mes) {
      case '1':
        {
          return "Enero";
        }
        break;
      case '2':
        {
          return "Febrero";
        }
        break;
      case '3':
        {
          return "Marzo";
        }
        break;
      case '4':
        {
          return "Abril";
        }
        break;
      case '5':
        {
          return "Mayo";
        }
        break;
      case '6':
        {
          return "Junio";
        }
        break;
      case '7':
        {
          return "Julio";
        }
        break;
      case '8':
        {
          return "Agosto";
        }
        break;
      case '9':
        {
          return "Septiembre";
        }
        break;
      case '10':
        {
          return "Octubre";
        }
        break;
      case '11':
        {
          return "Noviembre";
        }
        break;
      case '12':
        {
          return "Diciembre";
        }
        break;
      default:
        {
          return mes;
        }
        break;
    }
  }

  _todos_alv() {
    return Container(
      height: ((MediaQuery.of(context).size.height) * 3),
      width: MediaQuery.of(context).size.width,
      child: StreamBuilder(
        stream: Firestore.instance.collection('Eventos_Calendario').snapshots(),
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

              return ExpansionTile(
                backgroundColor: Color(0x1D605e5f),
                leading: Icon(Icons.event_available, color: Color(0xff868686)),
                title: Text(
                  data['fecha'],
                  style: TextStyle(
                      color: Color(0xFF262626), fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(data['evento']),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
