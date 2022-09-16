import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'add_schedule.dart';

class WorkingSchedule extends StatefulWidget {
  const WorkingSchedule({super.key});

  @override
  State<WorkingSchedule> createState() => _WorkingSchedule();
}

class _WorkingSchedule extends State<WorkingSchedule> {

  var _selectedDay;
  var _focusedDay;

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TableCalendar(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: DateTime.now(),
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay; // update `_focusedDay` here as well
                });
              },
            ),
          ),
          ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 15
                    ),
                    child: Text("13:00"),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      color: Colors.amber[colorCodes[index]],
                      child: Center(child: Text('Workout ${entries[index]}')),
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (_selectedDay==null) ? null : () => {
          Navigator.push(
            context, 
            MaterialPageRoute(
              builder: (context) => AddSchedule(selectedDay: _selectedDay)),
            )
        },
        tooltip: 'Add New Schedule',
        child: const Icon(Icons.add),
        ),
    );
  }
}