import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulWidgetDemo extends StatefulWidget {
  const StatefulWidgetDemo({Key? key}) : super(key: key);

  @override
  _StatefulWidgetDemoState createState() => _StatefulWidgetDemoState();
}

class _StatefulWidgetDemoState extends State<StatefulWidgetDemo> {
  double sliderValue = 0;
  bool isSwitch = false;
  bool isChecked = false;

  bool isObscured = true;

  String _selectedGender = 'male';

  RangeValues _currentRangeValues = const RangeValues(40, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            // Wrap(
            //   children: [
            //     Container(
            //       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //       height: 50,
            //       width: 100,
            //       color: Colors.grey,
            //     ),
            //     Container(
            //       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //       height: 50,
            //       width: 100,
            //       color: Colors.grey,
            //     ),
            //     Container(
            //       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //       height: 50,
            //       width: 100,
            //       color: Colors.grey,
            //     ),
            //     Container(
            //       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //       height: 50,
            //       width: 100,
            //       color: Colors.grey,
            //     ),
            //   ],
            // ),
            SliderTheme(
              data: SliderThemeData(
                  activeTickMarkColor: Colors.grey,
                  //activeTrackColor: Colors.black,
                  disabledInactiveTrackColor: Colors.grey,
                  trackHeight: 3),
              child: Slider.adaptive(
                label: "${sliderValue.toStringAsFixed(2)}",
                max: 100,
                min: 0,
                divisions: 100,
                value: sliderValue,
                onChanged: (value) {
                  setState(() {
                    sliderValue = value;
                  });
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Switch.adaptive(
              value: isSwitch,
              onChanged: (value) {
                setState(() {
                  isSwitch = value;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            Checkbox(
              value: isChecked,
              onChanged: (value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Radio<String>(
                value: 'male',
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
              ),
              title: const Text('Male'),
            ),
            ListTile(
              leading: Radio<String>(
                value: 'female',
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    _selectedGender = value!;
                  });
                },
              ),
              title: const Text('Female'),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                obscureText: isObscured,
                decoration: InputDecoration(
                    hintText: "Password",
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isObscured = !isObscured;
                        });
                      },
                      icon: isObscured
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    )),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            RangeSlider(
              values: _currentRangeValues,
              max: 100,
              divisions: 100,
              labels: RangeLabels(
                _currentRangeValues.start.round().toString(),
                _currentRangeValues.end.round().toString(),
              ),
              onChanged: (RangeValues values) {
                setState(() {
                  _currentRangeValues = values;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
