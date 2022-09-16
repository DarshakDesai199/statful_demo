import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Date_Picker extends StatefulWidget {
  const Date_Picker({Key? key}) : super(key: key);

  @override
  State<Date_Picker> createState() => _Date_PickerState();
}

class _Date_PickerState extends State<Date_Picker> {
  DateTime _dateTime = DateTime.now();

  TimeOfDay? time = TimeOfDay.now();

  DateTimeRange dateTimeRange =
      DateTimeRange(start: DateTime(2000, 12, 31), end: DateTime(2025, 12, 31));

  /// DateTime=(year/month/Day)

  Widget build(BuildContext context) {
    final start = dateTimeRange.start;
    final end = dateTimeRange.end;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                  onPressed: () async {
                    DateTime? _newDate = await showDatePicker(
                        context: context,
                        initialDate: _dateTime,
                        firstDate: DateTime(1900),
                        lastDate: DateTime(3100));

                    if (_newDate != null) {
                      setState(() {
                        _dateTime = _newDate;
                      });
                    }
                  },
                  child: Text("Choose Date")),
              SizedBox(
                height: 35,
              ),
              Text(
                "Time = ${time!.hourOfPeriod} : ${time!.minute}",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 35,
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
                child: Text("Choose Time"),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "${_dateTime.day}/${_dateTime.month}/${_dateTime.year}",
                  style: TextStyle(fontSize: 25, color: Colors.pink),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(onPressed: () {}, child: Text("Confirm")),
              SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () async {
                      DateTimeRange? newDateTimeRange =
                          await showDateRangePicker(
                              context: context,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025));

                      if (newDateTimeRange != null) {
                        setState(() {
                          dateTimeRange = newDateTimeRange;
                        });
                      }
                    },
                    child: SizedBox(
                      height: 100,
                      width: 200,
                      child: Column(
                        children: [
                          Text(
                            "Arrival Date",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text("${start.day}/${start.month}/${start.year}")
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      DateTimeRange? newDateTimeRange =
                          await showDateRangePicker(
                              context: context,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2025));
                      if (newDateTimeRange != null) {
                        setState(() {
                          dateTimeRange = newDateTimeRange;
                        });
                      }
                    },
                    child: SizedBox(
                      height: 100,
                      width: 200,
                      child: Column(
                        children: [
                          Text(
                            "Departure Date",
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text("${end.day}/${end.month}/${end.year}")
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "Duration: ${dateTimeRange.duration.inDays} Days",
                style: TextStyle(fontSize: 20, color: Colors.deepOrange),
              )
            ],
          ),
        ),
      ),
    );
  }
}
