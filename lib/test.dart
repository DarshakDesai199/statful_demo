import 'package:flutter/material.dart';

class test extends StatefulWidget {
  const test({Key? key}) : super(key: key);

  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  List<Map<String, dynamic>> categoryItems = [
    {"title": "Fast Delivery", "icon": Icon(Icons.delivery_dining)},
    {"title": "Stores in My Area", "icon": Icon(Icons.location_on)},
    {"title": "Previous Orders", "icon": Icon(Icons.book)},
    {"title": "Popular Orders", "icon": Icon(Icons.star_border)},
  ];

  List<Map<String, String>> type = [
    {"name": "Delivery"},
    {"name": "Pick Up"},
  ];
  double slidervalue = 0;
  int categorySelected = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 130,
                  ),
                  Text(
                    "Filter",
                    style: TextStyle(fontSize: 23),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                    categoryItems.length,
                    (index) => ListTile(
                          onTap: () {
                            setState(() {
                              categorySelected = index;
                            });
                          },
                          leading: CircleAvatar(
                            radius: 23,
                            backgroundColor: Colors.green.shade200,
                            child: IconButton(
                              onPressed: () {},
                              icon: categoryItems[index]['icon'],
                              color: Colors.green,
                            ),
                          ),
                          title: Text(
                            categoryItems[index]['title'],
                            style: TextStyle(fontSize: 18),
                          ),
                          trailing: Container(
                            height: 23,
                            width: 23,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: categorySelected == index
                                        ? Colors.transparent
                                        : Colors.grey),
                                shape: BoxShape.circle,
                                color: categorySelected == index
                                    ? Colors.green
                                    : Colors.transparent),
                            child: Center(
                              child: Icon(
                                Icons.check,
                                size: 13,
                                color: categorySelected == index
                                    ? Colors.white
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                        )),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'MIN ORDER AMOUNT',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: slidervalue,
                min: 0,
                max: 100,
                divisions: 100,
                onChanged: (value) {
                  setState(() {
                    slidervalue = value;
                  });
                },
                activeColor: Colors.green,
                label: "\$ ${slidervalue.toStringAsFixed(2)}",
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'MIN ORDER AMOUNT',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: slidervalue,
                min: 0,
                max: 100,
                divisions: 4,
                onChanged: (value) {
                  setState(() {
                    slidervalue = value;
                  });
                },
                activeColor: Colors.green,
                label: "\$ ${slidervalue.toStringAsFixed(2)}",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('0.5-2km'),
                  Text('3-5km'),
                  Text('6-8km'),
                  Text('9-10km'),
                ],
              ),
              SizedBox(
                height: 55,
              ),
              Text(
                'ORDER TYPE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: List.generate(
                    type.length,
                    (index) => ListTile(
                          title: Text("${type[index]['name']}"),
                        )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
