import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
//import 'package:firebase/firebase.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: ((MediaQuery.of(context).size.height) * .6),
              child: TableCalendar(
                initialCalendarFormat: CalendarFormat.month,
                calendarStyle: CalendarStyle(
                    todayColor: Colors.orange,
                    selectedColor: Colors.blue,
                    todayStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white)),

                headerStyle: HeaderStyle(
                  centerHeaderTitle: true,

                  //formatButtonTextStyle: TextStyle(color: Colors.red),
                  //formatButtonShowsNext: false,
                ),
                //startingDayOfWeek: StartingDayOfWeek.monday,
                onDaySelected: (date, events) {
                  print(date.toIso8601String());
                },
                builders: CalendarBuilders(
                  selectedDayBuilder: (context, date, events) => Container(
                      margin: const EdgeInsets.all(4.0),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
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
            Container(
              width: MediaQuery.of(context).size.width,
              height: ((MediaQuery.of(context).size.height) * .4),
              color: Colors.amber,
              child: Column(
                children: <Widget>[
                  new ExpansionTile(
                    title: Text('data'),
                    children: <Widget>[
                      ListTile(
                        title: Text('data'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
