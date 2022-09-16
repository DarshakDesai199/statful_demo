import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTimeDemo extends StatefulWidget {
  const DateTimeDemo({Key? key}) : super(key: key);

  @override
  State<DateTimeDemo> createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime _dateTime = DateTime.now();

  TimeOfDay? time = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async {
                  DateTime? _newDate = await showDatePicker(
                    context: context,
                    initialDate: _dateTime,
                    firstDate: DateTime(1900),
                    lastDate: DateTime(3100),
                  );

                  if (_newDate != null) {
                    setState(() {
                      _dateTime = _newDate;
                    });
                  }
                },
                child: Text("Choose Date"),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "${time!.hour}:${time!.minute}",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? _newTime = await showTimePicker(
                        context: context, initialTime: time!);

                    if (_newTime != null) {
                      setState(() {
                        time = _newTime;
                      });
                    }
                  },
                  child: Text("Choose Time")),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 200,
                child: CupertinoDatePicker(
                  mode: CupertinoDatePickerMode.dateAndTime,
                  onDateTimeChanged: (value) {},
                  initialDateTime: DateTime.now(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
