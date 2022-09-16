import 'package:flutter/material.dart';

class dropdown extends StatefulWidget {
  const dropdown({Key? key}) : super(key: key);

  @override
  _dropdownState createState() => _dropdownState();
}

List cities = ['india', 'pakistan', 'china', 'dubai', 'Australia'];

var selectCities = 'india';

class _dropdownState extends State<dropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
              child: DropdownButton(
            value: selectCities,
            icon: Icon(Icons.arrow_drop_down),
            items: cities.map(
              (e) {
                return DropdownMenuItem(
                  value: selectCities,
                  child: Text(e),
                );
              },
            ).toList(),
            onChanged: (String? value) {
              setState(() {
                selectCities = value!;
              });
            },
          ))
        ],
      ),
    );
  }
}
