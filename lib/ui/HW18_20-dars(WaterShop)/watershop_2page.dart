import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class WaterShop_Page_2 extends StatelessWidget {
  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
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
      body: Padding(
        padding: const EdgeInsets.only(
          left: 30.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Water Shop",
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 50.0,
              width: 350.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[100],
              ),
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              height: 300.0,
              width: 350.0,
              child: Text(""),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  30.0,
                ),
                image: DecorationImage(
                  image: AssetImage("assets/images/watershop/water.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Opacity(
              opacity: 0.6,
              child: Container(
                height: 80.0,
                child: Row(
                  children: [
                    Text(
                      "Catalog",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 190.0),
                    Text(
                      "see all",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(width: 5.0),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 16.0,
                      color: Colors.black54,
                    ),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
            ),
            Container(
              height: 150.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                itemExtent: 150.0,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Colors.blue,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bottles",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 40.0,
                          width: 100.0,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Text(
                            "Show all",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Colors.pinkAccent,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Coolers",
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 40.0,
                          width: 100.0,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Text(
                            "Show all",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Colors.amber[900],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Masafi Water",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 40.0,
                          width: 100.0,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Text(
                            "Show all",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.0,
                      ),
                      color: Colors.green,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Summer Time",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Container(
                          height: 40.0,
                          width: 100.0,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.0,
                            vertical: 10.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Text(
                            "Show all",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.splitscreen_outlined,
        
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_view_rounded,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
            ),
            label: "",
          ),BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
