import 'package:flutter/material.dart';

class ButtonsDemo extends StatelessWidget {
  const ButtonsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.red,
                height: 50,
                child: Text("Material Button"),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Elevated Button"),
              ),
              SizedBox(
                height: 15,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Raised Button"),
              ),
              SizedBox(
                height: 15,
              ),
              FlatButton(
                onPressed: () {},
                child: Text("Flat Button"),
              ),
              SizedBox(
                height: 15,
              ),
              // OutlineButton(
              //   onPressed: () {},
              //   child: Text("Outlined Button"),
              // ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {},
                child: Text("Text Button"),
              ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                child: Text("Hello"),
                onTap: () {},
              ),
              SizedBox(
                height: 15,
              ),
              Chip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [Text("Chip"), Icon(Icons.close)],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              )
            ],
          ),
        ),
      ),
    );
  }
}
