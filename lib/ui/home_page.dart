import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String urlImage = "https://source.unsplash.com/random/2160x1080";
  List<String> urlList = List.generate(
      10, (index) => "https://source.unsplash.com/random/2160x1080/$index");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Stateless va Statefull"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body:b());
  }

  Widget a() {
    return Center(
      child: Column(
        children: [
          FadeInImage(
            height: 400.0,
            width: 400.0,
            placeholder: AssetImage("assets/images/loading.gif"),
            image: NetworkImage(urlImage),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                urlImage = urlList[Random().nextInt(10)];
              });
              print("Set State Ishladi");
            },
            child: Text("Set State Qil"),
          ),
        ],
      ),
    );
  }

  Widget b() {
    return ListView(
      children: [
        Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              color: Colors.tealAccent,
              elevation: 20,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal.shade200,
                  radius: 20.0,
                ),
                title: Text("New Design - 2021"),
                subtitle: Text("Interesting Design For Mobile"),
                trailing: Icon(Icons.arrow_back_ios_new),
              ),
            ),
            Divider(),
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              color: Colors.tealAccent,
              elevation: 20,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal.shade200,
                  radius: 20.0,
                ),
                title: Text("New Design - 2021"),
                subtitle: Text("Interesting Design For Mobile"),
                trailing: Icon(Icons.arrow_back_ios_new),
              ),
            ),
            ],
        ),
      ],
    );
  }

  Widget c() {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Card(
              margin: EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 10.0,
              ),
              color: Colors.green[Random().nextInt(9) * 100],
              elevation: 20,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal.shade200,
                  radius: 20.0,
                ),
                title: Text("New Design - 2021"),
                subtitle: Text("Interesting Design For Mobile"),
                trailing: Icon(Icons.arrow_back_ios_new),
              ),
            ),
            Divider(),
          ],
        );
      },
    );
  }

  
}
