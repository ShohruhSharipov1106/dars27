
import 'package:flutter/material.dart';

class Japan extends StatefulWidget {
  @override
  _JapanState createState() => _JapanState();
}

class _JapanState extends State<Japan> {
  int miqdor = 1;

  List foodnames = [
    "Miso",
    "Natto",
    "Sashimi",
    "Seaweed",
    "Shiitake Mushroom",
  ];
  List food = [
    "assets/images/foods/miso_japan.jpg",
    "assets/images/foods/natto_japan.jpg",
    "assets/images/foods/sashimi_japan.jpg",
    "assets/images/foods/seaweed_japan.jpg",
    "assets/images/foods/Shiitake-Mushroom_japan.jpg"
  ];

  List price = [12, 14, 15, 7, 8];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 250.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 15.0,
                    vertical: 10.0,
                  ),
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black54,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(10.0, 30.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        (miqdor > 0)
                                            ? (miqdor = miqdor - 1)
                                            : miqdor = 0;
                                      },
                                    );
                                  },
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 26.0),
                                  ),
                                ),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    maximumSize: Size(70.0, 70.0),
                                    backgroundColor: Colors.white60,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    miqdor.toString(),
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(10.0, 30.0),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        20.0,
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        (miqdor >= 0)
                                            ? (miqdor = miqdor + 1)
                                            : miqdor = 0;
                                      },
                                    );
                                  },
                                  child: Text(
                                    "+",
                                    style: TextStyle(fontSize: 26.0),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      
                      Container(
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white70,
                          ),
                          onPressed: () {},
                          child: TextButton(
                            onPressed: () {
                              AlertDialog();
                            },
                            child: Text(
                              "\$" + (miqdor * 15).toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage("assets/images/foods/sashimi_japan.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 500.0,
            child: ListView.builder(
              itemExtent: 100.0,
              itemCount: food.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(
                  foodnames[index],
                  style: TextStyle(fontSize: 18.0),
                ),
                subtitle: Text(
                  "Japanese Foods",
                  style: TextStyle(fontSize: 14.0),
                ),
                leading: CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage(
                    food[index],
                  ),
                ),
                trailing: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white70,
                  ),
                  onPressed: () {},
                  child: Text(
                    "\$" + price[index].toString(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
