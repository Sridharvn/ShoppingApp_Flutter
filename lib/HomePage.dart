// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

import 'DetailsPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //     selectedItemColor: Colors.pink[300],
      //     unselectedItemColor: Colors.grey,
      //     // ignore: prefer_const_literals_to_create_immutables
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //         ),
      //         label: "Home",
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.settings),
      //         label: "Settings",
      //       )
      //     ]),
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Shopping Application",
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TopButton("Home Decor", isSelected: true),
              TopButton("Bath and Body"),
              TopButton("Beauty"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 50,
                    ),
                  ]),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TopHeadingList("Candles", isSelected: true),
                        TopHeadingList("Vases"),
                        TopHeadingList("Bins"),
                        TopHeadingList("Floral"),
                        TopHeadingList("Decor"),
                      ],
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          CardsList(context,
                              img:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHKR-6xAq_Kze4PbFEKWILwnL4ODUaPRcvBg&usqp=CAU",
                              title: "Candle Set",
                              price: "25"),
                          CardsList(context,
                              img:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEZpm5EfNLdJkBULCMup9ONcFoCJICMhENTg&usqp=CAU",
                              title: "Normal Candle",
                              price: "30"),
                          CardsList(context,
                              img:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhoDIsUF5rOLfG8RbmFvsAcDDmM58k5DgT9g&usqp=CAU",
                              title: "Buddhist Candle",
                              price: "25"),
                          CardsList(context,
                              img:
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHF9dC-7cGU0j5bvcxwaDxdLeD5LFJs5U1ow&usqp=CAU",
                              title: "Scented Candle",
                              price: "15")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // LineScrollBar(),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            "Holiday Special",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "View All",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          HolidaySpecials(
                              img:
                                  "https://m.media-amazon.com/images/S/aplus-media-library-service-media/6f894514-a89c-497e-b4f7-1474173c6db2.__CR0,0,300,400_PT0_SX300_V1___.jpg",
                              name: "Plum Green Tea Night Gel",
                              price: "431",
                              vol: "50ml"),
                          HolidaySpecials(
                              img:
                                  "https://m.media-amazon.com/images/I/51NYSJRXJ6L._SX679_.jpg",
                              name: "NIVEA Men Crème",
                              price: "123",
                              vol: "75ml"),
                          HolidaySpecials(
                              img:
                                  "https://m.media-amazon.com/images/I/718ufRgptzL._SX679_.jpg",
                              name: "Himalaya Nourishing Skin Cream",
                              price: "189.20",
                              vol: "200ml"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

ClipRRect HolidaySpecials({img, name, vol, price}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Container(
      height: 120,
      // width: 200,
      // color: Colors.amber,
      child: Row(
        children: [
          Image.network(
            img,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        vol,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "₹" + price,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

GestureDetector CardsList(BuildContext context,
    {img =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwD0aFIxo63CGbUtLfnoWlNWzAzDTC-vDgNg&usqp=CAU",
    title = "No title",
    price = "0"}) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return DetailsPage(
            img: img, title: title, price: price, context: context);
      }));
    },
    child: Column(
      children: [
        Container(
          height: 220,
          width: 160,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(img, fit: BoxFit.cover),
            ),
          ),
        ),
        Text(title),
        Text("\₹ $price")
      ],
    ),
  );
}

Column TopHeadingList(String text, {bool isSelected = false}) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontSize: 18,
          ),
        ),
      ),
      SizedBox(
        height: 5,
      ),
      if (isSelected)
        Container(
          height: 5,
          width: 5,
          decoration:
              BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        ),
    ],
  );
}

TextButton TopButton(String text, {bool isSelected = false}) {
  return TextButton(
    onPressed: (() {}),
    style: TextButton.styleFrom(
      shape: StadiumBorder(),
      backgroundColor: isSelected ? Colors.pink[300] : Colors.grey[300],
      foregroundColor: isSelected ? Colors.white : Colors.black54,
    ),
    child: Text(
      text,
      style: TextStyle(fontSize: 16),
    ),
  );
}

class LineScrollBar extends StatelessWidget {
  const LineScrollBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(left: 40),
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      child: Container(
        height: 5,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
