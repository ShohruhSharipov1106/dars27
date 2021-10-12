import 'dart:ui';

import 'package:dars27/ui/HW12_11-dars(Coffee_Shop)/coffee_shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CoffeeShop2 extends StatefulWidget {
  String? kelganrasm;
  String? kelganname;
  String? kelgancomponent;
  String? kelgangrade;
  String? kelganprice;
  CoffeeShop2(this.kelganrasm, this.kelganname, this.kelgancomponent,
      this.kelgangrade, this.kelganprice);
  @override
  _CoffeeShop2State createState() => _CoffeeShop2State();
}

class _CoffeeShop2State extends State<CoffeeShop2> {
  int _currentIndex = 0;
  List narx = [
    ["4.20", "6,20", "8,20"],
    ["3,14", "5,14", "7,14"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF131926),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage(
                    widget.kelganrasm.toString(),
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 30.0,
                    ),
                    height: 80.0,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF131926),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new_outlined,
                            ),
                            iconSize: 24.0,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF131926),
                          ),
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.favorite_rounded),
                            iconSize: 24.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130.0,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomLeft: Radius.circular(20.0),
                              ),
                              color: Colors.black54,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.kelganname.toString(),
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  widget.kelgancomponent.toString(),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Container(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.orangeAccent,
                                        size: 28.0,
                                      ),
                                      SizedBox(width: 5.0),
                                      Text(
                                        widget.kelgangrade.toString(),
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                          top: 5.0,
                                          bottom: 5.0,
                                        ),
                                        child: Text(
                                          "(6.986)",
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey[400],
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                              color: Colors.black54,
                            ),
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              right: 10.0,
                                              left: 30.0,
                                              top: 8.0,
                                              bottom: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Color(0xFF131926),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.coffee_rounded,
                                                  size: 26.0,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  "Coffee",
                                                  style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.grey[300],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 10.0,
                                              right: 30.0,
                                              top: 8.0,
                                              bottom: 8.0,
                                            ),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Color(0xFF131926),
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  Icons.water,
                                                  size: 26.0,
                                                  color: Colors.orangeAccent,
                                                ),
                                                Text(
                                                  "Milk",
                                                  style: TextStyle(
                                                    fontSize: 10.0,
                                                    color: Colors.grey[300],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding: EdgeInsets.all(10.0),
                                    margin: EdgeInsets.only(
                                      top: 7.0,
                                      bottom: 21.0,
                                      left: 30.0,
                                      right: 30.0,
                                    ),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xFF131926),
                                    ),
                                    child: Text(
                                      "Medium Roasted",
                                      style: TextStyle(
                                        color: Colors.grey[300],
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Description\n\n",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                  TextSpan(
                    text:
                        "A cappuccino is a coffee-based drink made\nprimarily from espresso and milk",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "...Read More\n\n",
                    style: TextStyle(
                      color: Colors.orange[300],
                      fontSize: 18.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  TextSpan(
                    text: "Size\n",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                border: Border.fromBorderSide(
                  (BorderSide.none),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      setState(
                        () {
                          _currentIndex = 0;
                          widget.kelgangrade == "4.5"
                              ? widget.kelganprice = narx[0][0]
                              : widget.kelganprice = narx[1][0];
                        },
                      );
                    },
                    child: Container(
                      width: 90.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: _currentIndex == 0
                            ? Border.all(
                                color: Colors.orangeAccent,
                              )
                            : Border.all(),
                        color: _currentIndex == 0
                            ? Colors.transparent
                            : Color(0xFF515768),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "S",
                        style: _currentIndex == 0
                            ? TextStyle(
                                color: Colors.orangeAccent,
                                fontSize: 20.0,
                              )
                            : TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(
                        () {
                          _currentIndex = 1;
                          widget.kelgangrade == "4.5"
                              ? widget.kelganprice = narx[0][1]
                              : widget.kelganprice = narx[1][1];
                        },
                      );
                    },
                    child: Container(
                      width: 90.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: _currentIndex == 1
                            ? Border.all(
                                color: Colors.orangeAccent,
                              )
                            : Border.all(),
                        color: _currentIndex == 1
                            ? Colors.transparent
                            : Color(0xFF515768),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "M",
                        style: _currentIndex == 1
                            ? TextStyle(
                                color: Colors.orangeAccent,
                                fontSize: 20.0,
                              )
                            : TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(
                        () {
                          _currentIndex = 2;
                          widget.kelgangrade== "4.5"
                              ? widget.kelganprice = narx[0][2]
                              : widget.kelganprice = narx[1][2];
                        },
                      );
                    },
                    child: Container(
                      width: 90.0,
                      height: 40.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: _currentIndex == 2
                            ? Border.all(
                                color: Colors.orangeAccent,
                              )
                            : Border.all(),
                        color: _currentIndex == 2
                            ? Colors.transparent
                            : Color(0xFF515768),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Text(
                        "L",
                        style: _currentIndex == 2
                            ? TextStyle(
                                color: Colors.orangeAccent,
                                fontSize: 20.0,
                              )
                            : TextStyle(
                                color: Colors.grey,
                                fontSize: 20.0,
                              ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 5.0,
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.attach_money_rounded,
                                color: Colors.orangeAccent,
                              ),
                              Text(
                                widget.kelganprice.toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 220.0,
                    height: 50.0,
                    margin: EdgeInsets.only(
                      left: 40.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
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
