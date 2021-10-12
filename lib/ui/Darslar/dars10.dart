import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dars10 extends StatefulWidget {
  const Dars10({Key? key}) : super(key: key);

  @override
  _Dars10State createState() => _Dars10State();
}

class _Dars10State extends State<Dars10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Dars - 10",
          ),
        ),
        body: c());
  }

  Widget a() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 400.0,
            color: Colors.red,
          ),
          Container(
            height: 400.0,
            color: Colors.red,
          ),
          Container(
            height: 400.0,
            color: Colors.red,
          ),
          Container(
            height: 400.0,
            color: Colors.red,
          ),
        ],
      ),
    );
  }

  Widget b() {
    return GestureDetector(
      child: Center(
        child: (Container(
          alignment: Alignment.center,
          height: 199,
          width: 199,
          decoration: BoxDecoration(
            gradient: linearRang(),
          ),
          child: Text(
            "Hello World",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
            ),
          ),
        )),
      ),
      onDoubleTap: () => print("Ikki Marta Bosildi!!!"),
      onDoubleTapCancel: () => (print("Fikrimdan Qaytdim !!!")),
      onTap: () {
        setState(() {});
      },
    );
  }

  LinearGradient linearRang() {
    List<Color> rang = [
      Colors.pinkAccent,
      Colors.amber,
      Colors.purple,
      Colors.green,
      Colors.cyan
    ];

    Set<Color> a = {};
    for (var i = 0; i < 5; i++) {
      a.add(rang[Random().nextInt(5)]);
    }
    return LinearGradient(colors: a.toList());
  }

  Widget c() {
    return CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverAppBar(
          flexibleSpace: FlexibleSpaceBar(
            title: Text("Flexible Space"),
            background: Image.network(
              "https://images.unsplash.com/photo-1629822341708-ce9c9ff950e1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
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
              icon: Icon(Icons.face),
            )
          ],
          centerTitle: false,
          pinned: true,
          snap: true,
          stretch: true,
          toolbarHeight: 80.0,
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                height: 200.0,
                color: Colors.greenAccent,
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                height: 200.0,
                color: Colors.greenAccent,
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                height: 200.0,
                color: Colors.greenAccent,
                margin: EdgeInsets.all(10.0),
              ),
              Container(
                height: 200.0,
                color: Colors.greenAccent,
                margin: EdgeInsets.all(10.0),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
