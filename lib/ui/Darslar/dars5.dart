import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Dars5 extends StatefulWidget {
  @override
  _Dars5State createState() => _Dars5State();
}

class _Dars5State extends State<Dars5> {
  @override
  /*
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medium"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.amberAccent,
                  height: 50.0,
                  width: 50.0,
                ),
                Container(
                  color: Colors.deepPurpleAccent,
                  height: 50.0,
                  width: 50.0,
                ),
                Container(
                  color: Colors.pink,
                  height: 50.0,
                  width: 50.0,
                ),
                Container(
                  color: Colors.tealAccent,
                  height: 50.0,
                  width: 50.0,
                ),
              ],
            ),
            Container(
                  color: Colors.blueAccent,
                  height: 50.0,
                  width: 50.0,
                ),
            Container(
                  color: Colors.redAccent,
                  height: 50.0,
                  width: 50.0,
                ),
            Container(
                  color: Colors.greenAccent,
                  height: 50.0,
                  width: 50.0,
                ),
            Container(
                  color: Colors.deepOrange,
                  height: 50.0,
                  width: 50.0,
                ),            
          ],
        ),
    );
  }*/

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Medium"),
      ),
      body: c(),
    );
  }

  Widget b() {
    return Column(
      children: [
        Text(
          "Text 1",
          style: TextStyle(
            color: Colors.red,
            fontSize: 30.0,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                height: 70.0,
                width: 70.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Text 1"),
                    Icon(
                      Icons.ac_unit_outlined,
                      size: 40.0,
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                height: 104.0,
                width: 70.0,
                child: Column(
                  children: [
                    Image.asset("images/image5.jpg"),
                    Expanded(
                      child: Text(
                        "Momiqvoy",
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                  height: 70.0,
                  width: 70.0,
                  child: FadeInImage(
                    placeholder: AssetImage("images/loop-loading-loading.gif"),
                    image: NetworkImage(
                      "https://unsplash.com/photos/qS4xm9xosA8",
                    ),
                  )),
            ),
            Expanded(
              child: Container(
                height: 70.0,
                width: 70.0,
                //color: Colors.tealAccent,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  backgroundImage:
                      NetworkImage("https://unsplash.com/photos/qS4xm9xosA8"),
                  child: Text(
                    "S",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget c() {
    return Center(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  child: FadeInImage(
                    fit: BoxFit.contain,
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1593642633279-1796119d5482?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
                    ),
                    placeholder: AssetImage("assets/images/image1.jpg"),
                  ),
                ),
              ),
              Expanded(
                child: FlutterLogo(
                  size: 60.0,
                  style: FlutterLogoStyle.stacked,
                ),
              ),
              Expanded(
                child: Placeholder(
                  strokeWidth: 4,
                  fallbackHeight: 100,
                ),
              ),
            ],
          ),
          Center(
            child: Column(
              children: [
                Container(
                  height: 300.0,
                  width: 400.0,
                  color: Colors.amber,
                  child: Image.asset(
                    "assets/images/image1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                ElevatedButton(
                  child: Container(
                    child: Row(
                      children: [
                        Text("Send"),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(Icons.send),
                      ],
                    ),
                  ),
                  onPressed: () => print("BUTTONGA BOSILDI !"),
                  onLongPress: () => print("BUTTONGA BOSILIB TURILDI"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  child: Column(
                    children: [
                      Text("Text Button"),
                      Icon(
                        Icons.alarm,
                      ),
                    ],
                  ),
                  onPressed: _ekrangaYozdir,
                  style: TextButton.styleFrom(
                    primary: Colors.teal,
                  ),
                ),
                OutlinedButton(
                  child: Text("Outlined Button"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _ekrangaYozdir() {
    debugPrint("Hello Button !");
    print("Ikkalasi Bir Xil Vazifa Uchun Chiqarilgan !!");
  }
}
