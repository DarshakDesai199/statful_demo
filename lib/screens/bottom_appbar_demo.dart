import 'package:flutter/material.dart';
import 'package:statful_demo/screens/sliver_demo.dart';

class BottomAppBarDemo extends StatefulWidget {
  @override
  _BottomAppBarDemoState createState() => _BottomAppBarDemoState();
}

class _BottomAppBarDemoState extends State<BottomAppBarDemo> {
  int buttonSelector = 2;
  List<Widget> screen = [
    SliverDemo(),
    SliverDemo(),
    SliverDemo(),
    SliverDemo(),
  ];
  List<Map<String, dynamic>> buttonName = [
    {
      'button': 'assets/images/menu.png',
      'name': 'Menu',
    },
    {
      'button': 'assets/images/bag.png',
      'name': 'Offers',
    },
    {
      'button': 'assets/images/person.png',
      'name': 'Profile',
    },
    {
      'button': 'assets/images/more.png',
      'name': 'More',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            buttonSelector = 2;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  buttonSelector == 2 ? Color(0XFFFC6011) : Color(0XFFB6B7B7),
            ),
            child: IconButton(
              onPressed: () {
                setState(() {
                  buttonSelector = 2;
                });
              },
              icon: Image(
                image: AssetImage('assets/images/home.png'),
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          // width: 9,
          height: 85,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                buttonName.length,
                (index) => Column(
                  children: [
                    Container(
                      height: 70,
                      width: 50,
                      // color: Colors.yellow,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  buttonSelector = index;
                                });
                              },
                              child: IconButton(
                                icon: Image(
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.fill,
                                  color: buttonSelector == index
                                      ? Color(0XFFFC6011)
                                      : Color(0XFFB6B7B7),
                                  image: AssetImage(
                                    buttonName[index]['button'],
                                  ),
                                ),
                                onPressed: () {},
                              ),
                            ),
                          ),
                          Text(
                            buttonName[index]['name'],
                            style: TextStyle(
                              color: buttonSelector == index
                                  ? Color(0XFFFC6011)
                                  : Color(0XFFB6B7B7),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        shape: CircularNotchedRectangle(),
        color: Color(0XFFFFFFFF),
      ),
      body: screen[buttonSelector],
    );
  }
}
