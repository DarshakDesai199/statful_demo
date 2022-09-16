import 'package:flutter/material.dart';

class Ful extends StatefulWidget {
  const Ful({Key? key}) : super(key: key);

  @override
  _FulState createState() => _FulState();
}

class _FulState extends State<Ful> {
  double click = 0;
  bool isSwitch = false;
  bool isCheck = false;
  String _sGender = 'male';
  bool isOb = true;
  RangeValues _rangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              SliderTheme(
                data: SliderThemeData(
                  activeTrackColor: Colors.orange,
                  trackHeight: 5,
                  inactiveTrackColor: Colors.red,
                ),
                child: Slider(
                  value: click,
                  label: "${click.toStringAsFixed(2)}",
                  // activeColor: Colors.orange,
                  min: 0,
                  max: 100,
                  divisions: 100,
                  onChanged: (value) {
                    setState(() {
                      click = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Switch(
                value: isSwitch,
                activeColor: Colors.red,
                onChanged: (value) {
                  setState(() {
                    isSwitch = value;
                  });
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "$isSwitch",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 25,
              ),
              Checkbox(
                value: isCheck,
                activeColor: Colors.yellow,
                checkColor: Colors.red,
                onChanged: (value1) {
                  setState(() {
                    isCheck = value1!;
                  });
                },
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'male',
                  groupValue: _sGender,
                  onChanged: (value) {
                    setState(() {
                      _sGender = value!;
                    });
                  },
                ),
                title: const Text('male'),
              ),
              ListTile(
                leading: Radio<String>(
                  value: 'female',
                  groupValue: _sGender,
                  onChanged: (value) {
                    setState(() {
                      _sGender = value!;
                    });
                  },
                ),
                title: const Text('female'),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                obscureText: isOb,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isOb = !isOb;
                          });
                        },
                        icon: isOb
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off))),
              ),
              SizedBox(
                height: 25,
              ),
              RangeSlider(
                values: _rangeValues,
                max: 100,
                divisions: 100,
                activeColor: Colors.red,
                inactiveColor: Colors.green,
                labels: RangeLabels(
                  _rangeValues.start.round().toString(),
                  _rangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    _rangeValues = values;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
