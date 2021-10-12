import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Statistics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 150.0,
                width: 400.0,
                child: Row(
                  children: [
                    SizedBox(width: 10.0),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      "Statistics",
                      style: TextStyle(
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                height: 120.0,
                child: GridView.count(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2150.0),
                              color: Colors.cyanAccent,
                            ),
                            child: Image.asset(
                              "assets/images/Swimming-PNG-images-Swimmer-transparent-PNGs-6png.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Swimming",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.orangeAccent,
                            ),
                            child: Image.asset(
                              "assets/images/PNG_images_PNGs_Run_Running_Runner_Sprint_Sprinting_Training_Jog.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Running",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: Image.asset(
                              "assets/images/Karate-PNG-images-Martial-Arts-PNGs-15png.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Karate",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.deepPurpleAccent,
                            ),
                            child: Image.asset(
                              "assets/images/PNG-images-NBA-Players-43png.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Basketball",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.blueAccent,
                            ),
                            child: Image.asset(
                              "assets/images/Cycling-PNG-images-Cyclist-Cycle-31png.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Cycling",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 90.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.pinkAccent,
                            ),
                            child: Image.asset(
                              "assets/images/PNG-images-Tennis-Player-7png.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "Tennis",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w800,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  "Latest Activities",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                height: 350.0,
                width: 350.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/ui.jpg"),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Text(""),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 20.0,
                ),
                child: Row(
                  children: [
                    Text(
                      "View Details",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 10.0),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20.0,
                      color: Colors.black,
                    ),
                    SizedBox(width: 70.0),
                    Icon(
                      Icons.favorite_outlined,
                      size: 20.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      "10",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Icon(
                      Icons.message,
                      size: 20.0,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      "2",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message_rounded), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: ""),
        ],
      ),
    );
  }
}
