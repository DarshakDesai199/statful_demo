import 'package:flutter/material.dart';
import 'package:statful_demo/statesul2.dart';

class Stateful extends StatefulWidget {
  @override
  _StatefulState createState() => _StatefulState();
}

class _StatefulState extends State<Stateful> {
  TextEditingController _name = TextEditingController();
  TextEditingController _surName = TextEditingController();
  TextEditingController _gender = TextEditingController();
  String _selectedGender = "Male";
  double _slidervalue = 10;
  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 412,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                        child: Text(
                          "ABC Company Ltd.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            _name.clear();
                            _surName.clear();
                          },
                          icon: Icon(
                            Icons.refresh,
                            size: 35,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " * Select Your Gender",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Radio(
                    value: "Male",
                    activeColor: Colors.red,
                    groupValue: _selectedGender,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  title: Text(
                    "Male",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ListTile(
                  leading: Radio(
                    value: "Female",
                    activeColor: Colors.red,
                    groupValue: _selectedGender,
                    onChanged: (String? value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  title: Text(
                    "Female",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " * Personal Information",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _name,
                  decoration: InputDecoration(
                      labelText: "First Name",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                      hintText: "Enter your name"),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: _surName,
                  decoration: InputDecoration(
                      labelText: "Surname",
                      border: OutlineInputBorder(),
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                      hintText: "Surname"),
                ),
                SizedBox(
                  height: 35,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    " * Your required Salary : ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "May you required between (in Thousand) ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Slider(
                  value: _slidervalue,
                  min: 10,
                  max: 100,
                  divisions: 100,
                  label: "${_slidervalue.toStringAsFixed(2)}",
                  activeColor: Colors.red,
                  inactiveColor: Colors.black,
                  onChanged: (value) {
                    setState(() {
                      _slidervalue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: ischeck,
                      activeColor: Colors.red,
                      checkColor: Colors.yellow,
                      onChanged: (value) {
                        setState(() {
                          ischeck = value!;
                        });
                      },
                    ),
                    Text(
                      "Term & Condition is applied.",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.grey),
                    )
                  ],
                ),
                Container(
                  height: 65,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.lightBlue,
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Stateful2(
                                    name: _name.text,
                                    surname: _surName.text,
                                    gender: _selectedGender,
                                    salary: _slidervalue,
                                    Terms_condition: ischeck,
                                  )));
                    },
                    child: Text(
                      "Next >>>>",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
