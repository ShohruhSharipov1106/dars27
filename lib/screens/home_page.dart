import 'dart:math';

import 'package:flutter/material.dart';

String name = "User";

class InstagramUI extends StatelessWidget {
  InstagramUI({Key? key}) : super(key: key);
  PageStorageBucket _bucket = PageStorageBucket();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          firstElement(),
          secondElement(),
          thirdElement(),
        ],
      ),
    );
  }

  Widget firstElement() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ],
        ),
      );
  Widget secondElement() => Container(
        height: 80.0,
        child: PageStorage(
          bucket: _bucket,
          key: PageStorageKey("1"),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      child: Text("$index"),
                      radius: 30.0,
                      backgroundColor:
                          Colors.indigo[(Random().nextInt(8) + 1) * 100],
                    ),
                    Text(
                        name.length <= 7 ? name : name.substring(0, 6) + "..."),
                  ],
                ),
              );
            },
            itemCount: 15,
          ),
        ),
      );
  Widget thirdElement() => Container(
        height: 550.0,
        child: PageStorage(
          bucket: _bucket,
          key: PageStorageKey("2"),
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  "$index",
                  style: TextStyle(
                    fontSize: 26.0,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.pink[(Random().nextInt(8) + 1) * 100],
                ),
                margin: EdgeInsets.all(5.0),
                height: 50.0,
              );
            },
          ),
        ),
      );
}
