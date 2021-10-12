
import 'package:dars27/ui/HW2_6-dars(terrier)/dars_6_uyga_vazifa_2.dart';
import 'package:dars27/ui/HW2_6-dars(terrier)/dars_6_uyga_vazifa_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dars6_uyga_vazifa_1 extends StatefulWidget {
  @override
  _Dars6_uyga_vazifa_1State createState() => _Dars6_uyga_vazifa_1State();
}

class _Dars6_uyga_vazifa_1State extends State<Dars6_uyga_vazifa_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.dehaze_outlined,
            size: 30.0,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        centerTitle: true,
        title: Text(
          "REPRESENT",
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 30.0,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dars6_uyga_vazifa_2(),
                      ),
                    );
                  },
                  child: Container(
                    height: 400.0,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/terrier-men-1.jpeg.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "FW19",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 15.0,
          ),
          Expanded(
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dars6_uyga_vazifa_3(),
                      ),
                    );
                  },
                  child: Container(
                      child: Image.asset(
                        "assets/images/sneakers-shoes-feet-grass-wallpaper-preview.jpg",
                        fit: BoxFit.cover,
                      ),
                      height: double.infinity),
                ),
                Center(
                  child: Text(
                    "THE\n  TERRIER",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 60.0,
                      fontStyle: FontStyle.normal,
                    ),
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
