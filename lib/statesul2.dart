import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stateful2 extends StatelessWidget {
  String name, surname, gender;
  double salary;
  bool Terms_condition;

  Stateful2(
      {required this.name,
      required this.surname,
      required this.gender,
      required this.salary,
      required this.Terms_condition});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.clear,
                        size: 35,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name : ${name}",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text("Surname : ${surname}",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                Text("Gender : ${gender}",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                Text("Salary : ${salary} K",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                Text("Terms&Condition : ${Terms_condition}",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
