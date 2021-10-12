import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dars9 extends StatelessWidget {
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("9-dars"),
      ),
      body: c(),
    );
  }

  Widget a() {
    return Center(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(bottom: 10.0),
            height: 80.0,
            color: Colors.amberAccent,
            child: ListTile(
              title: Text("$index - Element"),
              onTap: () {
                alertDialogKorsat(context, index);
              },
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }

  alertDialogKorsat(ctx, i) {
    showDialog(
      barrierDismissible: false,
      context: ctx,
      builder: (ctx) {
        return AlertDialog(
          title: Text(
            "Alert Dialog Example !",
            style: TextStyle(
              color: Colors.teal,
              fontSize: 23.0,
            ),
          ),
          content: Container(
            height: 250.0,
            child: Column(
              children: [
                Image.network(
                  "https://images.unsplash.com/photo-1631636691158-456207e8cd84?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
                ),
                Container(
                  color: Colors.yellowAccent,
                  child: Text("Bu $i - Alert Dialog Content Qismi"),
                ),
              ],
            ),
          ),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text("Cancel"),
              style: OutlinedButton.styleFrom(
                primary: Colors.redAccent,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text("OK"),
              style: OutlinedButton.styleFrom(
                primary: Colors.blueAccent,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget b() {
    return GridView.count(
      crossAxisCount: 2,
      reverse: true,
      scrollDirection: Axis.horizontal,
      children: [
        Container(
          margin: EdgeInsets.all(5.0),
          color: Colors.redAccent,
        ),
        Container(
          margin: EdgeInsets.all(5.0),
          color: Colors.yellowAccent,
        ),
        Container(
          margin: EdgeInsets.all(5.0),
          color: Colors.greenAccent,
        ),
      ],
    );
  }

  Widget c() {
    return GridView.builder(
      scrollDirection: Axis.horizontal,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) {
        return Container(
          color: randomColor(),
          margin: EdgeInsets.all(5.0),
        );
      },
      itemCount: 60,
    );
  }

  randomColor() {
    // CUBIC RUBIK
    List<Color> colors = [
      Colors.black,
      Colors.grey,
      Colors.purple,
      Colors.redAccent,
      Colors.green,
      Colors.blue,
      Colors.cyan,
      Colors.yellow
    ];
    int randSon = Random().nextInt(8);
    return colors[randSon];
  }

  Widget d() {
    final kInnerDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(32),
    );

    final kGradientBoxDecoration = BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.black,
          Colors.redAccent,
        ],
      ),
      border: Border.all(
        color: Colors.red,
      ),
      borderRadius: BorderRadius.circular(32),
    );

    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                randomColor(),
                randomColor(),
              ],
            ),
            border: Border.all(
              color: Colors.red,
              width: 6,
            ),
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              image: NetworkImage("https://source.unsplash.com/random/$index"),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      itemCount: 60,
    );
  }
}
