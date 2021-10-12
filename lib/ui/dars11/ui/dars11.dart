import 'package:flutter/material.dart';

class Dars11 extends StatefulWidget {
  const Dars11({Key? key}) : super(key: key);

  @override
  _Dars11State createState() => _Dars11State();
}

class _Dars11State extends State<Dars11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flexible Space"),
              background: Image.network(
                "https://images.unsplash.com/photo-1629812456605-4a044aa38fbc?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                fit: BoxFit.cover,
              ),
            ),
            title: Text("Sliver App Bar"),
            backgroundColor: Colors.redAccent,
            expandedHeight: 250.0,
            brightness: Brightness.dark,
            floating: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.face,
                ),
              ),
            ],
            centerTitle: false,
            pinned: true,
            snap: true,
            stretch: true,
            toolbarHeight: 80.0,
          ),
          // STATIC
          SliverPadding(
            padding: EdgeInsets.all(5.0),
            sliver: SliverList(
              delegate: _staticContainerList(),
            ),
          ),
          // DYNAMIC
          SliverPadding(
            padding: EdgeInsets.all(5.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                _dynamicContainerList,
                childCount: 5,
              ),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.cyan,
              ),
              Container(
                color: Colors.cyan,
                margin: EdgeInsets.all(5.0),
              ),
            ]),
            itemExtent: 200.0,
          ),
          SliverGrid.count(
            crossAxisCount: 10,
            childAspectRatio: 0.1,
            children: [
              Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.indigo,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.indigo,
              ),
              Container(
                margin: EdgeInsets.all(5.0),
                color: Colors.indigo,
              ),
            ],
          ),
        ],
      ),
    );
  }

  SliverChildListDelegate _staticContainerList() {
    return SliverChildListDelegate(
      [
        Container(
          height: 200.0,
          color: Colors.redAccent,
          margin: EdgeInsets.all(10.0),
        ),
        Container(
          height: 200.0,
          color: Colors.yellowAccent,
          margin: EdgeInsets.all(10.0),
        ),
        Container(
          height: 200.0,
          color: Colors.blueAccent,
          margin: EdgeInsets.all(10.0),
        ),
        Container(
          height: 200.0,
          color: Colors.greenAccent,
          margin: EdgeInsets.all(10.0),
        ),
        Container(
          height: 200.0,
          color: Colors.orangeAccent,
          margin: EdgeInsets.all(10.0),
        ),
        Container(
          height: 200.0,
          color: Colors.purpleAccent,
          margin: EdgeInsets.all(10.0),
        ),
      ],
    );
  }

  Widget _dynamicContainerList(context, index) {
    return Container(
      margin: EdgeInsets.all(5.0),
      height: 100.0,
      color: Colors.redAccent,
      alignment: Alignment.center,
      child: Text(
        "Container $index",
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
    );
  }
}
