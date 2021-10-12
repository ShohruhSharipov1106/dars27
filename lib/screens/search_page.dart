import 'dart:ui';

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.blue[900],
              child: Column(
                children: [
                  Container(
                    height: 50.0,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.dehaze_outlined,
                            color: Colors.white,
                            size: 30.0,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(
                                fontSize: 26.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Icon(
                            Icons.photo_camera,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 120.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.search,
                              size: 20.0,
                              color: Colors.grey,
                            ),
                            Text("Search",
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 18.0))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.transparent,
              height: 610.0,
              width: 500.0,
              margin: EdgeInsets.all(10.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                  childAspectRatio: 1.5,
                ),
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120.0,
                          margin: EdgeInsets.only(
                            top: 2.5,
                            right: 2.5,
                            left: 5.0,
                            bottom: 2.5,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 120.0,
                                  width: 170.0,
                                  child: Text(""),
                                  margin: EdgeInsets.only(bottom: 2.5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/re38"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 120.0,
                                  width: 170.0,
                                  child: Text(""),
                                  margin: EdgeInsets.only(top: 2.5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/58"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 2.5,
                              right: 5.0,
                              left: 2.5,
                              bottom: 2.5,
                            ),
                            width: 250.0,
                            height: 300.0,
                            child: Text(""),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/98"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (ctx, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 2.5,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/$index + 2"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: 6,
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 2.5,
                              right: 5.0,
                              left: 2.5,
                              bottom: 2.5,
                            ),
                            width: 250.0,
                            height: 300.0,
                            child: Text(""),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/35r4"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 120.0,
                          margin: EdgeInsets.only(
                            top: 2.5,
                            right: 2.5,
                            left: 5.0,
                            bottom: 2.5,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 120.0,
                                  width: 170.0,
                                  child: Text(""),
                                  margin: EdgeInsets.only(bottom: 2.5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/354"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 120.0,
                                  width: 170.0,
                                  child: Text(""),
                                  margin: EdgeInsets.only(top: 2.5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/8753"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (ctx, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 2.5,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/$index + 5"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: 6,
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 120.0,
                          margin: EdgeInsets.only(
                            top: 2.5,
                            right: 2.5,
                            left: 5.0,
                            bottom: 2.5,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 120.0,
                                  width: 170.0,
                                  child: Text(""),
                                  margin: EdgeInsets.only(bottom: 2.5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/2634"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 120.0,
                                  width: 170.0,
                                  child: Text(""),
                                  margin: EdgeInsets.only(top: 2.5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/542"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 2.5,
                              right: 5.0,
                              left: 2.5,
                              bottom: 2.5,
                            ),
                            width: 250.0,
                            height: 300.0,
                            child: Text(""),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/2346"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (ctx, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 2.5,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/$index + 50"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: 6,
                    ),
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                              top: 2.5,
                              right: 5.0,
                              left: 2.5,
                              bottom: 2.5,
                            ),
                            width: 250.0,
                            height: 300.0,
                            child: Text(""),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://source.unsplash.com/random/3578"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 120.0,
                          margin: EdgeInsets.only(
                            top: 2.5,
                            right: 2.5,
                            left: 5.0,
                            bottom: 2.5,
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 120.0,
                                  width: 170.0,
                                  child: Text(""),
                                  margin: EdgeInsets.only(bottom: 2.5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/2341"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 120.0,
                                  width: 170.0,
                                  child: Text(""),
                                  margin: EdgeInsets.only(top: 2.5),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          "https://source.unsplash.com/random/432"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: GridView.builder(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (ctx, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 2.5,
                          ),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/$index + 532"),
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                      itemCount: 6,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
