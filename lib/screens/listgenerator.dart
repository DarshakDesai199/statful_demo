import 'package:flutter/material.dart';

class ListDemo extends StatefulWidget {
  @override
  _ListDemoState createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  List<Map<String, dynamic>> categoryItems = [
    {"title": "Item 1", "icon": Icon(Icons.fastfood)},
    {"title": "Item 2", "icon": Icon(Icons.ramen_dining)},
    {"title": "Item 4", "icon": Icon(Icons.icecream)},
    {"title": "Item 5", "icon": Icon(Icons.lunch_dining)},
    {"title": "Item 6", "icon": Icon(Icons.sports_bar)},
  ];

  List<String> itemsName = ["Hii", "Hello", "Good Morning", "GN", "By"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: List.generate(
                      categoryItems.length,
                      (index) => Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 150,
                            width: 150,
                            color: Colors.grey.shade200,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 30),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: categoryItems[index]['icon'],
                                    iconSize: 35,
                                  ),
                                  Text(categoryItems[index]['title']),
                                ],
                              ),
                            ),
                          )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
