import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
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
  int pageSelector = 0;
  double sliderValue1 = 0;
  double sliderValue2 = 0;
  int categorySelected = -1;
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
                value: sliderValue1,
                min: 0,
                max: 100,
                divisions: 100,
                onChanged: (value) {
                  setState(() {
                    sliderValue1 = value;
                  });
                },
                activeColor: Colors.green,
                label: "\$ ${sliderValue1.toStringAsFixed(2)}",
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'MIN ORDER AMOUNT',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: sliderValue2,
                min: 0,
                max: 100,
                divisions: 4,
                onChanged: (value) {
                  setState(() {
                    sliderValue2 = value;
                  });
                },
                activeColor: Colors.green,
                label: "\$ ${sliderValue2.toStringAsFixed(2)}",
              ),
              Row(
                children: [
                  SizedBox(width: 90),
                  Text('0.5-2km'),
                  SizedBox(
                    width: 32,
                  ),
                  Text('3-5km'),
                  SizedBox(
                    width: 32,
                  ),
                  Text('6-8km'),
                  SizedBox(
                    width: 32,
                  ),
                  Text('9-10km'),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
              SizedBox(
                height: 55,
              ),
              Text(
                'ORDER TYPE',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  2,
                  (index) => MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: 40,
                    minWidth: 170,
                    onPressed: () {
                      setState(() {
                        pageSelector = index;
                      });
                    },
                    color: pageSelector == index
                        ? Colors.green
                        : Colors.grey.shade200,
                    child: Row(
                      children: [
                        Text('${type[index]['name']}'),
                        SizedBox(width: 20),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                pageSelector = index;
                              });
                            },
                            child: Icon(Icons.check,
                                color: pageSelector == index
                                    ? Colors.green
                                    : Colors.transparent),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
