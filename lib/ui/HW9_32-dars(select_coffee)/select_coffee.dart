import 'package:dars27/ui/HW9_32-dars(select_coffee)/select_coffee2.dart';
import 'package:flutter/material.dart';

class SelectCoffee extends StatefulWidget {
  @override
  _SelectCoffeeState createState() => _SelectCoffeeState();
}

class _SelectCoffeeState extends State<SelectCoffee>
    with TickerProviderStateMixin {
  TabController? _kontroller;
  @override
  void initState() {
    super.initState();
    _kontroller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              top: 150.0,
              bottom: 20.0,
              right: 150.0,
              left: 50.0,
            ),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: "Select",
                    style: TextStyle(
                      fontSize: 36.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  TextSpan(
                    text: "\nCoffee",
                    style: TextStyle(
                      fontSize: 52.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 80.0,
              bottom: 30.0,
              top: 20.0,
            ),
            child: Row(
              children: [
                Container(
                  height: 10.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.black87,
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                CircleAvatar(
                  radius: 4.0,
                  backgroundColor: Colors.grey[500],
                ),
                SizedBox(
                  width: 5.0,
                ),
                CircleAvatar(
                  radius: 3.0,
                  backgroundColor: Colors.grey[500],
                ),
                SizedBox(
                  width: 5.0,
                ),
                CircleAvatar(
                  radius: 2.0,
                  backgroundColor: Colors.grey[500],
                ),
                SizedBox(
                  width: 5.0,
                ),
                CircleAvatar(
                  radius: 1.0,
                  backgroundColor: Colors.grey[500],
                ),
              ],
            ),
          ),
          Container(
            height: 400.0,
            color: Colors.transparent,
            child: TabBarView(
              controller: _kontroller,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectCoffee2(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(
                          left: 80.0,
                          right: 20.0,
                          top: 20.0,
                          bottom: 20.0,
                        ),
                        width: 215.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white,
                          image: DecorationImage(
                            alignment: Alignment.topRight,
                            image: AssetImage(
                              "assets/images/select_coffee_cappucino.jpg",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          height: 60.0,
                          width: 75.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.attach_money,
                                size: 20.0,
                                color: Colors.grey,
                              ),
                              Text(
                                "25",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.black87,
                          ),
                        ),
                        bottom: 0,
                        right: 120,
                      ),
                      Positioned(
                        bottom: 80,
                        left: 110,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "Cappuccino",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text: "\nLattesso",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(
                        left: 80.0,
                        right: 20.0,
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      width: 215.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                        image: DecorationImage(
                          alignment: Alignment.topRight,
                          image: AssetImage(
                            "assets/images/americano.png",
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 75.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.attach_money,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                            Text(
                              "30",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.black87,
                        ),
                      ),
                      bottom: 0,
                      right: 120,
                    ),
                    Positioned(
                      bottom: 80,
                      left: 110,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Americano",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "\nWater",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 80.0,
                        right: 20.0,
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      width: 215.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                        image: DecorationImage(
                          alignment: Alignment.topRight,
                          image: AssetImage(
                            "assets/images/latte3.png",
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 75.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.attach_money,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                            Text(
                              "35",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.black87,
                        ),
                      ),
                      bottom: 0,
                      right: 120,
                    ),
                    Positioned(
                      bottom: 80,
                      left: 110,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Latte",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "\nHazelnut",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      margin: EdgeInsets.only(
                        left: 80.0,
                        right: 20.0,
                        top: 20.0,
                        bottom: 20.0,
                      ),
                      width: 215.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.white,
                        image: DecorationImage(
                          alignment: Alignment.topRight,
                          image: AssetImage(
                            "assets/images/espresso.jpg",
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        width: 75.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.attach_money,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                            Text(
                              "15",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.black87,
                        ),
                      ),
                      bottom: 0,
                      right: 120,
                    ),
                    Positioned(
                      bottom: 80,
                      left: 110,
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: "Espresso",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            TextSpan(
                              text: "\nEspresso",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left: 50.0,
                bottom: 30.0,
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CircleAvatar(
                    child: IconButton(
                      disabledColor: Colors.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.transparent,
                    controller: _kontroller,
                    tabs: [
                      Tab(
                        child: Row(
                          children: [
                            Text(
                              "Cappuccino",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.circle,
                              size: 8.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Text(
                              "Americano",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.circle,
                              size: 8.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Text(
                              "Latte",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.circle,
                              size: 8.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: [
                            Text(
                              "Espresso",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.circle,
                              size: 8.0,
                              color: Colors.black,
                            ),
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
    );
  }
}
