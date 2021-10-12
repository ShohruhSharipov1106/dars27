import 'package:dars27/ui/Hw14_34-dars(Coffee_delivery_figma)/Coffee_delivery_signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CoffeeDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 120.0,
            ),
            alignment: Alignment.center,
            child: Image.asset("assets/images/Group 7108.png"),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              top: 50.0,
              bottom: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Making your days with",
                  style: TextStyle(
                    color: Color(0xFF322951),
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "our coffee.",
                  style: TextStyle(
                    color: Color(0xFF322951),
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "The best grain, the finest roast,the",
                  style: TextStyle(
                    color: Color(0xFF184184184),
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  "most powerful flavor.",
                  style: TextStyle(
                    color: Color(0xFF184184184),
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(""),
                  width: 33.0,
                  height: 10.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Color(0xFF517190),
                  ),
                ),
                SizedBox(width: 10.0),
                CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Color(0xFF214218222),
                ),
                SizedBox(width: 10.0),
                CircleAvatar(
                  radius: 5.0,
                  backgroundColor: Color(0xFF214218222),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 120.0,
              right: 50.0,
            ),
            alignment: Alignment.bottomRight,
            child: CircleAvatar(
              radius: 32.0,
              backgroundColor: Color(0xFF517190),
              child: IconButton(
                padding: EdgeInsets.all(5.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CoffeeDeliverySignIn(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.arrow_forward,
                  size: 35.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
