import 'package:flutter/material.dart';

class Dars6 extends StatefulWidget {
  @override
  _Dars6State createState() => _Dars6State();
}

class _Dars6State extends State<Dars6> {
  int _sanoq = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Bar"),
      ),
      body: Center(
        child: Container(
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "Buttonga ",
                ),
                TextSpan(
                  text: "$_sanoq",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                TextSpan(
                  text: " Marta Bosildi !",
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {
                _sanoq += 1;
              });
            },
            child: Text("+1", style: TextStyle(fontSize: 18.0)),
          ),
          SizedBox(
            height: 20.0,
          ),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              setState(() {
                _sanoq -= 1;
              });
            },
            child: Text("-1", style: TextStyle(fontSize: 18.0)),
          ),
        ],
      ),
    );
  }
}
