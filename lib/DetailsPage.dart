// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;
  const DetailsPage({
    super.key,
    required this.img,
    required this.title,
    required this.price,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   toolbarHeight: 70,
      //   backgroundColor: Colors.grey[50],
      //   elevation: 0,
      //   leading: GestureDetector(
      //     onTap: () {
      //       Navigator.pop(context);
      //     },
      //     child: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: Icon(
      //         Icons.arrow_back,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      //   actions: [],
      // ),
      body: Stack(children: [
        Image.network(
          img,
          height: MediaQuery.of(context).size.height / 1.6,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.close, color: Colors.white, shadows: [
            Shadow(
              color: Colors.white,
              blurRadius: 100,
              offset: Offset.zero,
            )
          ]),
          padding: EdgeInsets.only(top: 40, left: 20),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 2.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(children: [
              Expanded(
                  child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(30),
                child: Column(children: [
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                      Text(
                        "\$$price",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Size",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "50ml",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Quantity",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.remove)),
                                Text(
                                  "1",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                IconButton(
                                    onPressed: () {}, icon: Icon(Icons.add)),
                              ],
                            )
                          ],
                        )
                      ]),
                ]),
              )),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.favorite_border),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.shopping_bag_outlined),
                        label: Text("Add to Basket"),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.pink.shade300),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                StadiumBorder()),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width /
                                            4.3))),
                      ),
                    )
                  ],
                ),
              ),
            ]),
          ),
        )
      ]),
    );
  }
}
