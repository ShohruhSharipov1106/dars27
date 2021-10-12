import 'package:flutter/material.dart';

class BarberShop1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Container(
          child: Text("Get a serious haircut"),
          color: Color(0xFF1429957),
        ),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "assets/images/Screenshot from 2021-10-02 12-48-28.png",
              ),
            ),
            color: Color(0XFF292743),
          ),
        ),
      ),
    );
  }
}
