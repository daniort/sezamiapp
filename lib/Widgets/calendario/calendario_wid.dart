import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:sezamiapp/Widgets/calendario/eventos_wid.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatefulWidget {
  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendario'),
      ),
      body: Column(
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width,
            child: TableCalendar(
              initialCalendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                todayColor: Colors.orange,
                selectedColor: Colors.blue,
                todayStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10.0,
                    color: Colors.blue),
              ),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
              ),
              onDaySelected: (date, events) {
                print(date.toIso8601String());
                if (date.day == 20 - 03 - 2020) {
                  print('hola');
                } else {
                  print('nomas no');
                }
              },
              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                  margin: const EdgeInsets.all(4.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: VerticalDivider(
                color: Colors.white,
              )),
          Expanded(
            //width: MediaQuery.of(context).size.width,
            //height: ((MediaQuery.of(context).size.height) * .28),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: ((MediaQuery.of(context).size.height) * 1),
              color: Color(0x1D605e5f),
              //color: Colors.grey,
              child: Evento(),
            ),
          ),
          new Container(
            child: Footer(),
          ),
        ],
      ),
    );
  }
}
