import 'package:ankara_fitnes/login-register/component/custom_button.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';

class AddSchedule extends StatefulWidget {
  const AddSchedule({super.key, required this.selectedDay});

  final selectedDay;

  @override
  State<AddSchedule> createState() => _AddScheduleState();
}

class _AddScheduleState extends State<AddSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: .5,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text(
              'Add Schedule',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
        actions: const [
          SizedBox(width: 40),
        ],
        leadingWidth: 50,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selected Day: ${widget.selectedDay.toString().substring(0, 10)}",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Time",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            DateTimePicker(
              type: DateTimePickerType.time,
              icon: const Icon(Icons.timer),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text(
                "Details Workout",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Choose Workout',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Difficulity',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Custom Repetitions',
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Custom Weights',
                    ),
                  ),
                ],
              ),
            ),
            CustomButton(label: 'Save', onPressed: () => Navigator.pop(context))
          ],
        ),
      ),
    );
  }
}
