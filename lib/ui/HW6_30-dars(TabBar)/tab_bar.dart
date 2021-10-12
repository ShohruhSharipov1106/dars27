import 'dart:math';

import 'package:flutter/material.dart';

class TabBarUV extends StatefulWidget {
  @override
  _TabBarUVState createState() => _TabBarUVState();
}

class _TabBarUVState extends State<TabBarUV> with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  List<String> ismlar = [
    "Russell Griffith",
    "Molly Nunez",
    "Judy Shaw",
    "Amanda Marshall",
    "Elsie Harris",
    "Kurt Stewart",
    "Sara Stevens",
    "Deanna Rodriguez",
    "Eunice Klein",
    "Gordon Crawford",
  ];

  List<String> vaqtlar = [
    "June 20, 3:41 pm",
    "June 20, 1:24 pm",
    "June 19, 2:10 pm",
    "June 19, 1:24 pm",
    "June 18, 2:10 pm",
    "May 20, 3:24 pm",
    "May 19, 2:10 pm",
    "May 19, 1:24 pm",
    "May 18, 2:26 pm",
    "May 17, 4:31 pm"
  ];
  List<int> cent = [00, 25, 50, 75];

  List<String> kirim = ["+", "-"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Activity",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TabBar(
            unselectedLabelColor: Colors.white70,
            controller: _tabController,
            labelStyle: TextStyle(fontSize: 20.0),
            labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
            physics: ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            isScrollable: true,
            labelColor: Colors.blue[900],
            indicatorColor: Colors.deepOrangeAccent,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.amber[400],
            ),
            tabs: [
              Tab(
                child: Text("All"),
              ),
              Tab(
                child: Text("Shopping"),
              ),
              Tab(
                child: Text("Taxi"),
              ),
              Tab(
                child: Text("Transport"),
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                Container(
                  height: 500.0,
                  width: 400.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: ListTile(
                            tileColor: Colors.deepPurpleAccent[700],
                            leading: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/1$index"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              ismlar[Random().nextInt(ismlar.length - 1)],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              vaqtlar[index].toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            trailing: Text(
                              kirim[Random().nextInt(kirim.length)].toString() +
                                  "\$" +
                                  Random().nextInt(200).toString() +
                                  "." +
                                  cent[Random().nextInt(cent.length - 1)]
                                      .toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 500.0,
                  width: 400.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: ListTile(
                            tileColor: Colors.deepPurpleAccent[700],
                            leading: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/1$index"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              ismlar[Random().nextInt(ismlar.length - 1)],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              vaqtlar[index].toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            trailing: Text(
                              kirim[Random().nextInt(kirim.length)].toString() +
                                  "\$" +
                                  Random().nextInt(200).toString() +
                                  "." +
                                  cent[Random().nextInt(cent.length - 1)]
                                      .toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 500.0,
                  width: 400.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: ListTile(
                            tileColor: Colors.deepPurpleAccent[700],
                            leading: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/1$index"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              ismlar[Random().nextInt(ismlar.length - 1)],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              vaqtlar[index].toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            trailing: Text(
                              kirim[Random().nextInt(kirim.length)].toString() +
                                  "\$" +
                                  Random().nextInt(200).toString() +
                                  "." +
                                  cent[Random().nextInt(cent.length - 1)]
                                      .toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 500.0,
                  width: 400.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          child: ListTile(
                            tileColor: Colors.deepPurpleAccent[700],
                            leading: Container(
                              height: 50.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      "https://source.unsplash.com/random/1$index"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Text(
                              ismlar[Random().nextInt(ismlar.length - 1)],
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            subtitle: Text(
                              vaqtlar[index].toString(),
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            trailing: Text(
                              kirim[Random().nextInt(kirim.length)].toString() +
                                  "\$" +
                                  Random().nextInt(200).toString() +
                                  "." +
                                  cent[Random().nextInt(cent.length - 1)]
                                      .toString(),
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
