import 'package:flutter/material.dart';

class Instagram_search extends StatefulWidget {
  @override
  _Instagram_searchState createState() => _Instagram_searchState();
}

class _Instagram_searchState extends State<Instagram_search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.dehaze),
            title: Text("Explore"),
            actions: [
              Icon(Icons.camera_alt_outlined),
            ],
            centerTitle: true,
            expandedHeight: 100.0,
            stretch: true,
            floating: true,
            snap: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(),
          ),
          SliverFillRemaining(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (ctx, i) {
                return Container(
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://source.unsplash.com/random/${i * 7}",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://source.unsplash.com/random/2$i",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      flex: 1,
                                    ),
                                  ],
                                ),
                              ),
                              flex: 1,
                            ),
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/${i + 1}"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              flex: 2,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (ctx, index) => Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + i} ",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            flex: 1,
                          ),
                          itemCount: 6,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.all(5.0),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://source.unsplash.com/random/${i + 1}"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              flex: 2,
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://source.unsplash.com/random/${i * 7}",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      flex: 1,
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.all(5.0),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: NetworkImage(
                                              "https://source.unsplash.com/random/2$i",
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      flex: 1,
                                    ),
                                  ],
                                ),
                              ),
                              flex: 1,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GridView.builder(
                          scrollDirection: Axis.horizontal,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (ctx, index) => Expanded(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                    "https://source.unsplash.com/random/${index + i} ",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            flex: 1,
                          ),
                          itemCount: 6,
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: 60,
              itemExtent: 1100.0,
            ),
          ),
        ],
      ),
    );
  }
}
