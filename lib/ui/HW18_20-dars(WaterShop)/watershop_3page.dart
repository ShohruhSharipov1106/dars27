import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class WaterShop_Page_3 extends StatefulWidget {
  @override
  State<WaterShop_Page_3> createState() => _WaterShop_Page_3State();
}

class _WaterShop_Page_3State extends State<WaterShop_Page_3> {
  var Water0 = TextEditingController();
  var Water1 = TextEditingController();
  var Water2 = TextEditingController();
  int qiymat0 = 1;
  int qiymat1 = 1;
  int qiymat2 = 1;

  List<String> WaterName = [
    "Masafi Water",
    "Cooler Frost",
    "Summer Time",
  ];

  List<String> WaterType = [
    "Bottle 18.,9 L",
    "Floor",
    "Bottle 2 L",
  ];

  List<int> WaterPrice = [
    7,
    50,
    1,
  ];

  List<String> WaterImg = [
    "assets/images/watershop/NicePng_mineral-water-can-png_4437966.png",
    "assets/images/watershop/water-cooler-hotfrost.jpg",
    "assets/images/watershop/NicePng_water-bottle-png_62146.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 28.0,
          ),
        ),
        title: Text(
          "Basket",
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_basket_outlined,
              size: 30.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 20.0,
            ),
            child: Container(
              height: 520.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2.0,
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 150.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                WaterImg[0],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                WaterName[0],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24.0,
                                ),
                              ),
                              Text(
                                WaterType[0],
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                children: [
                                  Text(
                                    "\$" + WaterPrice[0].toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                  SizedBox(width: 50.0),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: GestureDetector(
                                      onTap: () {
                                        qiymat0 -= 1;
                                        qiymat0 <= 0
                                            ? qiymat0 = 0
                                            : qiymat0 = qiymat0;
                                        setState(
                                          () {
                                            Water0.text = qiymat0.toString();
                                            WaterPrice[0] = 7 * qiymat0;
                                          },
                                        );
                                      },
                                      child: Text(
                                        "-",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 35.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 5.0,
                                    ),
                                    width: 30.0,
                                    height: 50.0,
                                    child: TextFormField(
                                      style: TextStyle(
                                        fontSize: 26.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      controller: Water0,
                                      decoration: InputDecoration(
                                        labelText: '1',
                                        labelStyle: TextStyle(
                                          fontSize: 26.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        floatingLabelStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.blue[400],
                                    child: GestureDetector(
                                      onTap: () {
                                        qiymat0 += 1;
                                        qiymat0 <= 0
                                            ? qiymat0 = 0
                                            : qiymat0 = qiymat0;
                                        setState(
                                          () {
                                            Water0.text = qiymat0.toString();
                                            WaterPrice[0] = 7 * qiymat0;
                                          },
                                        );
                                      },
                                      child: Text(
                                        "+",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2.0,
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 150.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                WaterImg[1],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                WaterName[1],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24.0,
                                ),
                              ),
                              Text(
                                WaterType[1],
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Container(
                                width: 220.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$" + WaterPrice[1].toString(),
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30.0,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: Colors.grey[200],
                                          child: GestureDetector(
                                            onTap: () {
                                              qiymat1 -= 1;
                                              qiymat1 <= 0
                                                  ? qiymat1 = 0
                                                  : qiymat1 = qiymat1;
                                              setState(
                                                () {
                                                  Water1.text =
                                                      qiymat1.toString();
                                                  WaterPrice[1] = 50 * qiymat1;
                                                },
                                              );
                                            },
                                            child: Text(
                                              "-",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 35.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.only(
                                            left: 5.0,
                                          ),
                                          width: 30.0,
                                          height: 50.0,
                                          child: TextFormField(
                                            style: TextStyle(
                                              fontSize: 26.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            controller: Water1,
                                            decoration: InputDecoration(
                                              labelText: '1',
                                              labelStyle: TextStyle(
                                                fontSize: 26.0,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              floatingLabelStyle: TextStyle(
                                                color: Colors.white,
                                              ),
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide.none,
                                              ),
                                            ),
                                          ),
                                        ),
                                        CircleAvatar(
                                          backgroundColor: Colors.blue[400],
                                          child: GestureDetector(
                                            onTap: () {
                                              qiymat1 += 1;
                                              qiymat1 <= 0
                                                  ? qiymat1 = 0
                                                  : qiymat1 = qiymat1;
                                              setState(
                                                () {
                                                  Water1.text =
                                                      qiymat1.toString();
                                                  WaterPrice[1] = 50 * qiymat1;
                                                },
                                              );
                                            },
                                            child: Text(
                                              "+",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 2.0,
                          blurRadius: 20.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 150.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            image: DecorationImage(
                              image: AssetImage(
                                WaterImg[2],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                WaterName[2],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24.0,
                                ),
                              ),
                              Text(
                                WaterType[2],
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Row(
                                children: [
                                  Text(
                                    "\$" + WaterPrice[2].toString(),
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30.0,
                                    ),
                                  ),
                                  SizedBox(width: 50.0),
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[200],
                                    child: GestureDetector(
                                      onTap: () {
                                        qiymat2 -= 1;
                                        qiymat2 <= 0
                                            ? qiymat2 = 0
                                            : qiymat2 = qiymat2;
                                        setState(
                                          () {
                                            Water2.text = qiymat2.toString();
                                            WaterPrice[2] = 1 * qiymat2;
                                          },
                                        );
                                      },
                                      child: Text(
                                        "-",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 35.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                      left: 5.0,
                                    ),
                                    width: 30.0,
                                    height: 50.0,
                                    child: TextFormField(
                                      style: TextStyle(
                                        fontSize: 26.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      controller: Water2,
                                      decoration: InputDecoration(
                                        labelText: '1',
                                        labelStyle: TextStyle(
                                          fontSize: 26.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        floatingLabelStyle: TextStyle(
                                          color: Colors.white,
                                        ),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.blue[400],
                                    child: GestureDetector(
                                      onTap: () {
                                        qiymat2 += 1;
                                        qiymat2 <= 0
                                            ? qiymat2 = 0
                                            : qiymat2 = qiymat2;
                                        setState(
                                          () {
                                            Water2.text = qiymat2.toString();
                                            WaterPrice[2] = 1 * qiymat2;
                                          },
                                        );
                                      },
                                      child: Text(
                                        "+",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 120.0,
            decoration: BoxDecoration(
              color: Colors.pink[200],
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(
                  30.0,
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$ ${WaterPrice[0] + WaterPrice[1] + WaterPrice[2]}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                  Container(
                    height: 60.0,
                    width: 160.0,
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(
                        25.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Pay",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 26.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
