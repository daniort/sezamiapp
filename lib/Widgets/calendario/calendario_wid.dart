import 'package:flutter/material.dart';
import 'package:sezamiapp/Widgets/footer_wig.dart';
import 'package:sezamiapp/Widgets/calendario/eventos_wid.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey[300]),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                    )),
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
          Expanded(
            //width: MediaQuery.of(context).size.width,
            //height: ((MediaQuery.of(context).size.height) * .28),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: ((MediaQuery.of(context).size.height) * 1),
              color: Colors.grey,
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
