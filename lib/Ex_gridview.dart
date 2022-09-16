import 'package:flutter/material.dart';

class Ex_gridview extends StatelessWidget {
  var height;
  var width;
  @override
  List<Map<String, String>> items = [
    {'image': 'assets/kiwi.png', 'price': '\$0.90', 'title': 'Kiwi'},
    {'image': 'assets/Papapya.png', 'price': '\$1.90', 'title': 'Papaya'},
    {'image': 'assets/durian.png', 'price': '\$2.90', 'title': 'Durian'},
    {
      'image': 'assets/watermelon.png',
      'price': '\$2.90',
      'title': 'Watermelon'
    },
    {
      'image': 'assets/strawberry.png',
      'price': '\$1.50',
      'title': 'Strawberry'
    },
    {'image': 'assets/lemon.png', 'price': '\$0.50', 'title': 'Lemon'},
  ];
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/orange.png'),
        titleSpacing: 5,
        leadingWidth: 70,
        title: Text(
          'Fruma',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30),
        ),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage("assets/d6.jpg"),
          ),
        ],
        elevation: 12,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: width * 0.8,
                  child: TextField(
                    onTap: () {},
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffEEEEEE),
                      hintText: "Summer Fruit",
                      hintStyle: TextStyle(
                          color: Colors.black.withOpacity(0.50),
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                      suffixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.black.withOpacity(0.50),
                        size: 35,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none),
                    ),
                    cursorWidth: 25.0,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.clear,
                  ),
                  iconSize: 35,
                  color: Colors.black.withOpacity(0.50),
                )
              ],
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Chip(
                      label: Row(
                        children: [
                          Text(
                            "Popular",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.keyboard_arrow_down)
                        ],
                      ),
                    )
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_road_sharp,
                      size: 25,
                    ))
              ],
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 0.8),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 10,
                    child: Column(
                      children: [
                        Container(
                          height: height * 0.15,
                          width: width * 0.30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage(
                              "${items[index]['image']}",
                            ),
                          )),
                        ),
                        Text(
                          "${items[index]['title']}",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "${items[index]['price']}",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade400),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
