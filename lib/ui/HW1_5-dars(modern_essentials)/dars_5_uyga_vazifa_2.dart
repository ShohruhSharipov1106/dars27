import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dars5_2_qism extends StatefulWidget {
  @override
  _Dars5_2_qismState createState() => _Dars5_2_qismState();
}

class _Dars5_2_qismState extends State<Dars5_2_qism> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20.0,
              bottom: 15.0,
              right: 10.0,
              left: 10.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Milan",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  "sraggas",
                  style: TextStyle(
                    color: Colors.transparent,
                    fontSize: 48.0,
                    height: 0.8,
                    decorationThickness: 1.0,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.black,
                  ),
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/new-in.jpeg"),
                        radius: 30.0,
                      ),
                      Text(
                        "New in",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/sale.jpeg"),
                        radius: 30.0,
                      ),
                      Text(
                        "Sale",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/brand.jpeg"),
                        radius: 30.0,
                      ),
                      Text(
                        "Brand",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/clothing.jpeg"),
                        radius: 30.0,
                      ),
                      Text(
                        "Clothing",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/images/shoes.jpeg"),
                        radius: 30.0,
                      ),
                      Text(
                        "Shoes",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 370.0,
            width: 370.0,
            margin: EdgeInsets.all(10.0),
            child: Image.asset(
              "assets/images/container-3.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20.0,
                    right: 10.0,
                  ),
                  width: 60.0,
                  child: Divider(
                    thickness: 3.0,
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "  Modern \nEssentials",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "\n  Discover new styles  ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10.0,
                    right: 20.0,
                  ),
                  width: 60.0,
                  child: Divider(
                    thickness: 3.0,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 150.0,
            ),color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 4.0,
                  backgroundColor: Colors.grey,
                ),
                CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 9.0,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 4.0,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 4.0,
                  backgroundColor: Colors.grey,
                ),
                CircleAvatar(
                  radius: 4.0,
                  backgroundColor: Colors.grey,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
