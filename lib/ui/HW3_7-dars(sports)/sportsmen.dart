import 'package:dars27/ui/HW3_7-dars(sports)/Sport_stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Sportsmen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              collapsedHeight: 250.0,
              flexibleSpace: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "Hey Brian,",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Statistics(),
                            ),
                          );
                        },
                        child: Container(
                          height: 60.0,
                          width: 60.0,
                          child: Text(""),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18.0),
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/victor-freitas-vqDAUejnwKw-unsplash.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Text(
                      "What are you\nup to today?",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 32.0,
                      ),
                    ),
                    margin: EdgeInsets.only(
                      left: 42.0,
                    ),
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                ),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 10.0,
                    mainAxisExtent: 150.0,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          "Swimming",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.cyanAccent,
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage(
                            "assets/images/Swimming-PNG-images-Swimmer-transparent-PNGs-6png.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          "Running",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.orangeAccent,
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage(
                            "assets/images/PNG_images_PNGs_Run_Running_Runner_Sprint_Sprinting_Training_Jog.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          "Karate",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.deepOrangeAccent,
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage(
                            "assets/images/Karate-PNG-images-Martial-Arts-PNGs-15png.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          "Basketball",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.deepPurpleAccent,
                        image: DecorationImage(
                          scale: 0.5,
                          alignment: Alignment.bottomRight,
                          image: AssetImage(
                            "assets/images/PNG-images-NBA-Players-43png.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          "Cycling",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.blueAccent,
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage(
                            "assets/images/Cycling-PNG-images-Cyclist-Cycle-31png.png",
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          "Tennis",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.0),
                        color: Colors.pinkAccent,
                        image: DecorationImage(
                          alignment: Alignment.bottomRight,
                          image: AssetImage(
                            "assets/images/PNG-images-Tennis-Player-7png.png",
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
