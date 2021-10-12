import 'package:flutter/material.dart';

class Yellow_Chair2 extends StatefulWidget {
  const Yellow_Chair2({Key? key}) : super(key: key);

  @override
  State<Yellow_Chair2> createState() => _Yellow_Chair2State();
}

class _Yellow_Chair2State extends State<Yellow_Chair2>
    with TickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "Buy Now!",
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {},
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey,
            size: 28.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star_border,
              color: Colors.grey,
              size: 28.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 350.0,
            child: Image.asset(
              "assets/images/yellow_chair/blue-custom.png",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Yellow Chair",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                  ),
                ),
                SizedBox(
                  height: 11.0,
                ),
                Text(
                  "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9\nAll dimensions are in INCH",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 11.0,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("4.9   |   239 Reviews"),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    labelPadding: EdgeInsets.all(10.0),
                    controller: _controller,
                    tabs: [
                      Text("Specifications"),
                      Text("Care"),
                      Text("FAQ's"),
                      Text("Shipping"),
                      Text("Terms"),
                      Text("Warrenty"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _controller,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dimensions:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9, All dimensions are in INCH",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Material:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "PolyPurulent Fabric, High Quality Wood, High Quality Leather",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dimensions:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9, All dimensions are in INCH",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Material:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "PolyPurulent Fabric, High Quality Wood, High Quality Leather",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dimensions:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9, All dimensions are in INCH",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Material:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "PolyPurulent Fabric, High Quality Wood, High Quality Leather",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dimensions:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9, All dimensions are in INCH",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Material:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "PolyPurulent Fabric, High Quality Wood, High Quality Leather",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dimensions:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9, All dimensions are in INCH",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Material:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "PolyPurulent Fabric, High Quality Wood, High Quality Leather",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Dimensions:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "Dimensions: H 33 x W 19 x D 21: Seating Height: Height-17.9, All dimensions are in INCH",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Material:",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 19),
                              ),
                              Text(
                                "PolyPurulent Fabric, High Quality Wood, High Quality Leather",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 2,
        elevation: 0.2,
        selectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: Colors.grey,
            ),
            label: "Favourites",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_basket,
              color: Colors.grey,
            ),
            label: "Purchases",
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              color: Colors.grey,
            ),
            label: "Profile",
            backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
