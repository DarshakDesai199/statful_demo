import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ex_Listview extends StatelessWidget {
  var height;
  var width;
  @override
  List<Map<String, String>> product = [
    {
      "image": "assets/apple.png",
      "price": "\$2.50",
      "title": "Nut Butter Bar",
      "item": "4"
    },
    {
      "image": "assets/butter.png",
      "price": "\$3.69",
      "title": "Tostitos Chunky Salsa",
      "item": "1"
    },
    {
      "image": "assets/gourment.png",
      "price": "\$1.49",
      "title": "Prigo",
      "item": "2"
    },
    {
      "image": "assets/prego.png",
      "price": "\$7.99",
      "title": "Turkey Breast",
      "item": "2"
    },
    {
      "image": "assets/tost.png",
      "price": "\$0.99",
      "title": "Autumn Giory Apple",
      "item": "1"
    }
  ];

  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Cart",
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 5,
                    ),
                    height: height * 0.15,
                    child: Row(
                      children: [
                        Container(
                          height: height,
                          width: width * 0.22,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("${product[index]['image']}"),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: width * 0.05,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${product[index]['price']}",
                              style: TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "${product[index]['title']}",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          height: height * 0.07,
                          width: width * 0.14,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(color: Colors.grey, width: 2)),
                          child: Center(
                            child: Text(
                              "${product[index]['item']}",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              height: height * 0.08,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(25)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Checkout",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "\$21.17",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
