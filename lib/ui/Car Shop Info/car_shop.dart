import 'package:dars27/ui/Car%20Shop%20Info/buycar3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CarShop extends StatefulWidget {
  String? kfirstname;
  String? ksecondname;
  String? kusername;
  String? kemail;
  CarShop({this.kfirstname, this.ksecondname, this.kusername, this.kemail});

  @override
  State<CarShop> createState() => _CarShopState();
}

class _CarShopState extends State<CarShop> with TickerProviderStateMixin {
  TabController? _tabController;
  var _carcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Explore",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: [
          Icon(
            Icons.menu_outlined,
            color: Colors.black,
            size: 26.0,
          ),
          SizedBox(width: 25.0),
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
              "https://source.unsplash.com/random",
            ),
          ),
          SizedBox(width: 20.0),
        ],
      ),
      body: Column(
        children: [
          Container(
              height: 80.0,
              padding: EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Colors.grey[200],
                    ),
                    height: 80.0,
                    width: 330.0,
                    child: TextFormField(
                      controller: _carcontroller,
                      validator: (text) {
                        if (_carcontroller.text.length < 3) {
                          return "Enter more characters";
                        }
                      },
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: "What transport do you need?",
                        hintStyle: TextStyle(
                          fontSize: 18.0,
                        ),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                  Container(
                    height: 80.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white70,
                    ),
                    child: Icon(
                      Icons.sort_outlined,
                      size: 28.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              )),
          Container(
            height: 650.0,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TabBar(
                    controller: _tabController,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorWeight: 3.0,
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 5.0,
                    ),
                    indicatorColor: Colors.blueAccent,
                    indicatorPadding: EdgeInsets.only(
                      right: 30.0,
                      left: 15.0,
                    ),
                    labelStyle: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                    tabs: [
                      Tab(
                        text: "Explore",
                      ),
                      Tab(
                        text: "Cars",
                      ),
                      Tab(
                        text: "Trucks",
                      ),
                      Tab(
                        text: "Scooters",
                      ),
                      Tab(
                        text: "Helicopters",
                      ),
                    ],
                  ),
                  Container(
                    height: 500.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                        ),
                      ],
                      color: Colors.white,
                    ),
                    width: 400.0,
                    child: TabBarView(
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 50.0,
                                  right: 30.0,
                                  left: 30.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "BMW X4 Sports",
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amberAccent,
                                          ),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 20.0,
                                  bottom: 10.0,
                                ),
                                child: Text(
                                  "2017 - COMFORT CLASS",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chair_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Icon(
                                      Icons.door_front_door_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Icon(
                                      Icons.door_sliding_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.amber,
                                child: Image.asset(
                                  "assets/images/car_shop/bmw-x4-white.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.blueAccent,
                                      size: 36.0,
                                    ),
                                    Text(
                                      "210",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Text(
                                      "per day",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 80.0),
                                    OutlinedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BuyCar3(
                                              kelganemail: widget.kemail,
                                              kelganfirstname:
                                                  widget.kfirstname,
                                              kelgansecondname:
                                                  widget.ksecondname,
                                              kelganusername: widget.kusername,
                                              kelganmashina: "BMW X4 Sports",
                                              kelgannarx: 210,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Book now",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        shadowColor: Colors.grey,
                                        elevation: 2.0,
                                        fixedSize: Size(150.0, 50.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 50.0,
                                  right: 30.0,
                                  left: 30.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "LAMBORGHINI HURACAN",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amberAccent,
                                          ),
                                          Text(
                                            "4.9",
                                            style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 20.0,
                                  bottom: 10.0,
                                ),
                                child: Text(
                                  "2020 - COMFORT CLASS",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 10.0,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chair_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Icon(
                                      Icons.door_front_door_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Icon(
                                      Icons.door_sliding_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                  ],
                                ),
                              ),
                              Container(
                                child: Image.asset(
                                  "assets/images/car_shop/lamborghini_huracan.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.blueAccent,
                                      size: 36.0,
                                    ),
                                    Text(
                                      "250",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Text(
                                      "per day",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 80.0),
                                    OutlinedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BuyCar3(
                                              kelganemail: widget.kemail,
                                              kelganfirstname:
                                                  widget.kfirstname,
                                              kelgansecondname:
                                                  widget.ksecondname,
                                              kelganusername: widget.kusername,
                                              kelganmashina:
                                                  "LAMBORGHINI HURACAN",
                                              kelgannarx: 250,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Book now",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        shadowColor: Colors.grey,
                                        elevation: 2.0,
                                        fixedSize: Size(150.0, 50.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 50.0,
                                  right: 30.0,
                                  left: 30.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "DAF TRUCKS",
                                      style: TextStyle(
                                        fontSize: 26.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amberAccent,
                                          ),
                                          Text(
                                            "4.6",
                                            style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 20.0,
                                ),
                                child: Text(
                                  "2019 - COMFORT CLASS",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chair_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Icon(
                                      Icons.door_front_door_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Icon(
                                      Icons.door_sliding_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.amber,
                                child: Image.asset(
                                  "assets/images/car_shop/truck_white.png",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.blueAccent,
                                      size: 36.0,
                                    ),
                                    Text(
                                      "500",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Text(
                                      "per day",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 80.0),
                                    OutlinedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BuyCar3(
                                              kelganemail: widget.kemail,
                                              kelganfirstname:
                                                  widget.kfirstname,
                                              kelgansecondname:
                                                  widget.ksecondname,
                                              kelganusername: widget.kusername,
                                              kelganmashina: "DAF TRUCKS",
                                              kelgannarx: 500,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Book now",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        shadowColor: Colors.grey,
                                        elevation: 2.0,
                                        fixedSize: Size(150.0, 50.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 50.0,
                                  right: 30.0,
                                  left: 30.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "ELECTRIC SCOOTER",
                                      style: TextStyle(
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amberAccent,
                                          ),
                                          Text(
                                            "4.3",
                                            style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 20.0,
                                ),
                                child: Text(
                                  "2020 - COMFORT CLASS",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 10.0,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chair_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 270.0,
                                child: Image.asset(
                                  "assets/images/car_shop/Scooter_White_White_background.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.blueAccent,
                                      size: 36.0,
                                    ),
                                    Text(
                                      "15",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Text(
                                      "per day",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 80.0),
                                    OutlinedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BuyCar3(
                                              kelganemail: widget.kemail,
                                              kelganfirstname:
                                                  widget.kfirstname,
                                              kelgansecondname:
                                                  widget.ksecondname,
                                              kelganusername: widget.kusername,
                                              kelganmashina: "ELECTRIC SCOOTER",
                                              kelgannarx: 15,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Book now",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        shadowColor: Colors.grey,
                                        elevation: 2.0,
                                        fixedSize: Size(150.0, 50.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: 50.0,
                                  right: 30.0,
                                  left: 30.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "HELICOPTER",
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amberAccent,
                                          ),
                                          Text(
                                            "4.8",
                                            style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontSize: 24.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 30.0,
                                  top: 20.0,
                                  bottom: 10.0,
                                ),
                                child: Text(
                                  "2019 - COMFORT CLASS",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  left: 30.0,
                                  top: 10.0,
                                  bottom: 10.0,
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chair_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Icon(
                                      Icons.door_front_door_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                    Icon(
                                      Icons.door_sliding_rounded,
                                      color: Colors.grey,
                                      size: 24.0,
                                    ),
                                    SizedBox(width: 5.0),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 20.0),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.amber,
                                child: Image.asset(
                                  "assets/images/car_shop/helicopter_white.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.blueAccent,
                                      size: 34.0,
                                    ),
                                    Text(
                                      "1200",
                                      style: TextStyle(
                                        fontSize: 28.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Text(
                                      "per day",
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(width: 70.0),
                                    OutlinedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => BuyCar3(
                                              kelganemail: widget.kemail,
                                              kelganfirstname:
                                                  widget.kfirstname,
                                              kelgansecondname:
                                                  widget.ksecondname,
                                              kelganusername: widget.kusername,
                                              kelganmashina: "HELICOPTER",
                                              kelgannarx: 1200,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Book now",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        backgroundColor: Colors.blue,
                                        shadowColor: Colors.grey,
                                        elevation: 2.0,
                                        fixedSize: Size(150.0, 50.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            10.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                      controller: _tabController,
                    ),
                  ),
                  SingleChildScrollView(
                    child: GridView.count(
                      padding: EdgeInsets.all(10.0),
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 10.0,
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/car_shop/Riding-a-Snow-Bike-101.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            "Snow Bikes",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/car_shop/bmw_2_series_kupe.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            "Cars",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/car_shop/helicopter.jpg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            "Helicopters",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/car_shop/truck.jpeg"),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Text(
                            "Trucks",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
