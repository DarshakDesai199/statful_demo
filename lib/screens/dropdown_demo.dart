import 'dart:async';

import 'package:flutter/material.dart';

class DropDownDemo extends StatefulWidget {
  const DropDownDemo({Key? key}) : super(key: key);

  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}

class _DropDownDemoState extends State<DropDownDemo> {
  List<String> cities = ["US", "China", "New Zealand", "Australia", "India"];

  String selectedValue = "India";

  int _counter = 60;

  Timer? _timer;

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_counter > 0) {
        setState(() {
          _counter--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.all(15),
                color: Colors.grey.shade300,
                child: DropdownButton(
                  underline: Container(),
                  value: selectedValue,
                  hint: Text("Country"),
                  style: TextStyle(fontSize: 25, color: Colors.grey),
                  isExpanded: true,
                  iconSize: 32,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: cities.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text("$_counter"),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
