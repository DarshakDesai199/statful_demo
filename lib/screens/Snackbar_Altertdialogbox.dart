import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  var otp = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FlatButton(
            onPressed: () {
              if (otp == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Please enter Otp.."),
                    duration: Duration(seconds: 3),
                  ),
                );
              } else {}
            },
            child: Text(
              "Verify Otp",
            ),
            color: Colors.green,
          ),
          SizedBox(
            height: 20,
          ),
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Do you want to delete this item?"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("NO")),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text("YES"))
                    ],
                  );
                },
              );
            },
            icon: Icon(Icons.delete),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
