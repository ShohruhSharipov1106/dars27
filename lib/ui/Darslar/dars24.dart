import 'dart:html';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _keyOfScaffold = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keyOfScaffold,

      // DRAWER MENU
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.yellow,
                    backgroundImage:
                        NetworkImage("https://source.unsplash.com/random/2"),
                    radius: 40.0,
                  ),
                  SizedBox(width: 20.0),
                  CircleAvatar(
                    backgroundColor: Colors.cyan,
                    backgroundImage:
                        NetworkImage("https://source.unsplash.com/random/3"),
                    radius: 30.0,
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 20.0,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Username Lastname\n",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.0,
                      ),
                    ),
                    TextSpan(
                      text: "Email@gmail.com",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 700.0,
              child: ListView(
                children: _listOfListTile(),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Google Fonts",
          style: TextStyle(
            color: Colors.black,
            fontSize: 33.0,
            fontFamily: 'Schyler',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40.0,
              ),
            ),
            OutlinedButton(
              onPressed: () {
                _keyOfScaffold.currentState!.openDrawer();
              },
              child: Text("Drawerni Och"),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _listOfListTile() {
    return [
      ListTile(
        leading: Icon(Icons.home),
        title: Text(
          "Home Page",
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Scaffold(
                  appBar: AppBar(
                    title: Text(
                      "Home Page",
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text(
          "Settings",
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text(
          "Info",
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.contact_mail),
        title: Text(
          "Contact",
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        onTap: () {},
      ),
      SizedBox(height: 100.0),
      InkWell(
        focusColor: Colors.red,
        splashColor: Colors.red,
        child: Text(
          "Log Out",
          style: TextStyle(
            color: Colors.red,
            fontSize: 26.0,
          ),
        ),
        onDoubleTap: () {
          Navigator.pop(context);
        },
      )
    ];
  }
}
