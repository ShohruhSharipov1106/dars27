import 'package:dars27/Model/Pokemon_model.dart';
import 'package:flutter/material.dart';

class Pokemon_Page2 extends StatefulWidget {
  String img;
  String name;
  String height;
  String weight;
  String candy;
  int candyCount;
  String egg;
  Pokemon_Page2(this.img, this.name, this.height, this.weight, this.candy,
      this.candyCount, this.egg);
  @override
  _Pokemon_Page2State createState() => _Pokemon_Page2State();
}

class _Pokemon_Page2State extends State<Pokemon_Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListWheelScrollView.useDelegate(
        itemExtent: 200.0,
        childDelegate: ListWheelChildBuilderDelegate(
          builder: (context, index) {
            return Hero(
              tag: "$index",
              child: Container(
                child: Column(
                  children: [
                    Container(
                      height: 100.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.img.toString(),
                          ),
                        ),
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.0),
                        ),
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              color: Colors.black12,
                              blurRadius: 20.0,
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(20.0),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 3.0,
                        ),
                        height: 60.0,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text("name: ${widget.name}"),
                                Text("height: ${widget.height}"),
                                Text("weight: ${widget.weight}"),
                              ],
                            ),
                            Column(
                              children: [
                                Text("candy: ${widget.candy}"),
                                Text("candyCount: ${widget.candyCount}"),
                                Text("egg: ${widget.egg}"),
                              ],
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
