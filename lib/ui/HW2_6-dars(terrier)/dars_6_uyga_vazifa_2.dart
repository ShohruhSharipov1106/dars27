import 'package:flutter/material.dart';

class Dars6_uyga_vazifa_2 extends StatefulWidget {
  @override
  _Dars6_uyga_vazifa_2State createState() => _Dars6_uyga_vazifa_2State();
}

class _Dars6_uyga_vazifa_2State extends State<Dars6_uyga_vazifa_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
            size: 24.0,
          ),
        ),
        centerTitle: true,
        title: Text(
          "FW19",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.check_box_outline_blank,
              color: Colors.grey,
            ),
            color: Colors.black,
            iconSize: 24.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.grid_view_outlined,
              color: Colors.black,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                top: 20.0,
                bottom: 15.0,
                left: 5.0,
                right: 5.0,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Image(
                              image: AssetImage(
                                "assets/images/terrier-cloth-1.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "  REPRESENT X \nLESSONS HOODIE",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "\$215.00 USD",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 230.0,
                            child: Image(
                              image: AssetImage(
                                "assets/images/terrier-cloth-2.jpeg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "\n  DINNER SHIRT\n\t\t\t\t\t\t  SPLIT    ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "\$175.00 USD",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14.0,
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
            child: Container(
              color: Colors.transparent,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            height: 250.0,
                            child: Image(
                              image: AssetImage(
                                "assets/images/terrier-cloth-3.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "  \t\t\tT-SHIRT \nWASHED BLACK",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "\$100.00 USD",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Container(
                            height: 230.0,
                            child: Image(
                              image: AssetImage(
                                "assets/images/terrier-cloth-4.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            " LOGO SWEATER\n\t\tRED MARBLE",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Text(
                            "\$200.00 USD",
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 14.0,
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
        ],
      ),
    );
  }
}
