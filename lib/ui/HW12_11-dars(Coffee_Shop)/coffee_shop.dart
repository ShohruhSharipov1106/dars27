import 'dart:ui';

import 'package:dars27/ui/HW12_11-dars(Coffee_Shop)/coffee_shop2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CoffeeShop extends StatefulWidget {
  @override
  _CoffeeShopState createState() => _CoffeeShopState();
}

class _CoffeeShopState extends State<CoffeeShop> with TickerProviderStateMixin {
  TabController? _controler;
  List images = [
    "assets/images/coffee_shop/cappuccino_oat_milk.jpg",
    "assets/images/coffee_shop/ca.jpg",
  ];
  List name = [
    "Cappuccino",
    "Espresso",
    "Latte",
    "Flat Wrapped",
  ];

  List component = [
    "With Oat Milk",
    "Chocolate",
  ];

  List grade = [
    "4.5",
    "4.2",
  ];

  List<String> price = [
    "4.20",
    "3.14",
  ];
  @override
  void initState() {
    super.initState();
    _controler = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF131926),
      body: Column(
        children: [
          Container(
            height: 400.0,
            child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Positioned(
                  width: 50.0,
                  height: 50.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF242836),
                    ),
                    child: Icon(
                      Icons.grid_view_rounded,
                      color: Colors.grey[600],
                    ),
                  ),
                  left: 20.0,
                  top: 100.0,
                ),
                Positioned(
                  width: 50.0,
                  height: 50.0,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF242836),
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/modegirls.jpeg",
                        ),
                      ),
                    ),
                    child: Text(""),
                  ),
                  right: 20.0,
                  top: 100.0,
                ),
                Positioned(
                  child: Text(
                    "Find the best \ncoffee for you",
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  top: 180.0,
                  left: 20.0,
                ),
                Positioned(
                  child: Container(
                    margin: EdgeInsets.only(
                      top: 310.0,
                      right: 20.0,
                      left: 20.0,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    height: 60.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Color(0xFF263140),
                    ),
                    child: TextFormField(
                      cursorColor: Colors.grey[400],
                      showCursor: true,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintStyle: TextStyle(
                          color: Colors.grey[400],
                        ),
                        hintText: "Find Your Coffee ...",
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          color: Colors.grey[400],
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Column(
                    children: [
                      TabBar(
                        physics: ScrollPhysics(),
                        indicatorWeight: 1.0,
                        indicatorPadding: EdgeInsets.only(
                          top: 40.0,
                        ),
                        controller: _controler,
                        isScrollable: true,
                        indicator: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orangeAccent,
                        ),
                        labelStyle: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        labelColor: Colors.orangeAccent,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelColor: Colors.grey[400],
                        tabs: [
                          Tab(
                            text: name[0],
                          ),
                          Tab(
                            text: name[1],
                          ),
                          Tab(
                            text: name[2],
                          ),
                          Tab(
                            text: name[3],
                          ),
                        ],
                      ),
                      Container(
                        height: 250.0,
                        child: TabBarView(
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250.0,
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                        left: 30.0,
                                        right: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF515768),
                                            Color(0xFF121725)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  images[0],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 130.0,
                                            width: 130.0,
                                            child: Text(""),
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                name[0],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            top: 150.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                component[0],
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                            top: 170.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(28.0),
                                                  bottomLeft:
                                                      Radius.circular(40.0),
                                                ),
                                                color: Colors.black54,
                                              ),
                                              height: 30.0,
                                              width: 60.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    grade[0],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            top: 10.0,
                                            right: 17.0,
                                          ),
                                          Positioned(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_rounded,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  price[0].toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 30.0),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CoffeeShop2(
                                                          images[0],
                                                          name[0],
                                                          component[0],
                                                          grade[0],
                                                          price[0],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            bottom: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250.0,
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                        left: 10.0,
                                        right: 30.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF515768),
                                            Color(0xFF121725)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  images[1],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 130.0,
                                            width: 130.0,
                                            child: Text(""),
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                name[0],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            top: 150.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                component[1],
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                            top: 170.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(28.0),
                                                  bottomLeft:
                                                      Radius.circular(40.0),
                                                ),
                                                color: Colors.black54,
                                              ),
                                              height: 30.0,
                                              width: 60.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    grade[1],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            top: 10.0,
                                            right: 17.0,
                                          ),
                                          Positioned(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_rounded,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  price[1].toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 30.0),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CoffeeShop2(
                                                          images[1],
                                                          name[1],
                                                          component[1],
                                                          grade[1],
                                                          price[1],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            bottom: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250.0,
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                        left: 30.0,
                                        right: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF515768),
                                            Color(0xFF121725)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  images[0],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 130.0,
                                            width: 130.0,
                                            child: Text(""),
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                name[1],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            top: 150.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                component[0],
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                            top: 170.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(28.0),
                                                  bottomLeft:
                                                      Radius.circular(40.0),
                                                ),
                                                color: Colors.black54,
                                              ),
                                              height: 30.0,
                                              width: 60.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    grade[0],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            top: 10.0,
                                            right: 17.0,
                                          ),
                                          Positioned(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_rounded,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  price[0].toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 30.0),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CoffeeShop2(
                                                          images[0],
                                                          name[1],
                                                          component[0],
                                                          grade[0],
                                                          price[0],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            bottom: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250.0,
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                        left: 10.0,
                                        right: 30.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF515768),
                                            Color(0xFF121725)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  images[1],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 130.0,
                                            width: 130.0,
                                            child: Text(""),
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                name[1],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            top: 150.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                component[1],
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                            top: 170.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(28.0),
                                                  bottomLeft:
                                                      Radius.circular(40.0),
                                                ),
                                                color: Colors.black54,
                                              ),
                                              height: 30.0,
                                              width: 60.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    grade[1],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            top: 10.0,
                                            right: 17.0,
                                          ),
                                          Positioned(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_rounded,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  price[1].toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 30.0),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CoffeeShop2(
                                                          images[1],
                                                          name[1],
                                                          component[1],
                                                          grade[1],
                                                          price[1],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            bottom: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250.0,
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                        left: 30.0,
                                        right: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF515768),
                                            Color(0xFF121725)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  images[0],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 130.0,
                                            width: 130.0,
                                            child: Text(""),
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                name[2],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            top: 150.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                component[0],
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                            top: 170.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(28.0),
                                                  bottomLeft:
                                                      Radius.circular(40.0),
                                                ),
                                                color: Colors.black54,
                                              ),
                                              height: 30.0,
                                              width: 60.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    grade[0],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            top: 10.0,
                                            right: 17.0,
                                          ),
                                          Positioned(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_rounded,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  price[0].toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 30.0),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CoffeeShop2(
                                                          images[0],
                                                          name[2],
                                                          component[0],
                                                          grade[0],
                                                          price[0],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            bottom: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250.0,
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                        left: 10.0,
                                        right: 30.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF515768),
                                            Color(0xFF121725)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  images[1],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 130.0,
                                            width: 130.0,
                                            child: Text(""),
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                name[2],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            top: 150.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                component[1],
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                            top: 170.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(28.0),
                                                  bottomLeft:
                                                      Radius.circular(40.0),
                                                ),
                                                color: Colors.black54,
                                              ),
                                              height: 30.0,
                                              width: 60.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    grade[1],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            top: 10.0,
                                            right: 17.0,
                                          ),
                                          Positioned(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_rounded,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  price[1].toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 30.0),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CoffeeShop2(
                                                          images[1],
                                                          name[2],
                                                          component[1],
                                                          grade[1],
                                                          price[1],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            bottom: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250.0,
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                        left: 30.0,
                                        right: 10.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF515768),
                                            Color(0xFF121725)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  images[0],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 130.0,
                                            width: 130.0,
                                            child: Text(""),
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                name[3],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            top: 150.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                component[0],
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                            top: 170.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(28.0),
                                                  bottomLeft:
                                                      Radius.circular(40.0),
                                                ),
                                                color: Colors.black54,
                                              ),
                                              height: 30.0,
                                              width: 60.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    grade[0],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            top: 10.0,
                                            right: 17.0,
                                          ),
                                          Positioned(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_rounded,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  price[0].toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 30.0),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CoffeeShop2(
                                                          images[0],
                                                          name[3],
                                                          component[0],
                                                          grade[0],
                                                          price[0],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            bottom: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      height: 250.0,
                                      margin: EdgeInsets.only(
                                        top: 20.0,
                                        left: 10.0,
                                        right: 30.0,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF515768),
                                            Color(0xFF121725)
                                          ],
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional.topCenter,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.all(10.0),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                  images[1],
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            height: 130.0,
                                            width: 130.0,
                                            child: Text(""),
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 20.0),
                                              child: Text(
                                                name[3],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0),
                                              ),
                                            ),
                                            top: 150.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 30.0),
                                              child: Text(
                                                component[1],
                                                style: TextStyle(
                                                    color: Colors.grey[400],
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12.0),
                                              ),
                                            ),
                                            top: 170.0,
                                            left: 30.0,
                                          ),
                                          Positioned(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                  topRight:
                                                      Radius.circular(28.0),
                                                  bottomLeft:
                                                      Radius.circular(40.0),
                                                ),
                                                color: Colors.black54,
                                              ),
                                              height: 30.0,
                                              width: 60.0,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star_rounded,
                                                    color: Colors.orangeAccent,
                                                  ),
                                                  Text(
                                                    grade[1],
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            top: 10.0,
                                            right: 17.0,
                                          ),
                                          Positioned(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.attach_money_rounded,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  price[1].toString(),
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                SizedBox(width: 30.0),
                                                InkWell(
                                                  onTap: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            CoffeeShop2(
                                                          images[1],
                                                          name[3],
                                                          component[1],
                                                          grade[1],
                                                          price[1],
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Container(
                                                    height: 30.0,
                                                    width: 30.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      color:
                                                          Colors.orangeAccent,
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            bottom: 10.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                          controller: _controler,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          right: 180.0,
                          top: 30.0,
                          bottom: 20.0,
                        ),
                        child: Text(
                          "Special for you",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF485666),
                              Color(0xFF202234),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        width: 350.0,
                        height: 150.0,
                        child: Row(
                          children: [
                            Container(
                              height: 120.0,
                              width: 140.0,
                              margin: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/images/coffee_shop/cappuccino.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Text(""),
                            ),
                            Container(
                              child: Text(
                                "5 Coffee Beans You\nMust Try!",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.black12,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outlined), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications_rounded), label: ""),
        ],
      ),
    );
  }
}
