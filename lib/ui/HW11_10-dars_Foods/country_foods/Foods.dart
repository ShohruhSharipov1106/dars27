import 'package:dars27/ui/HW11_10-dars_Foods/country_foods/japan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Foods extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: AlignmentDirectional.bottomEnd,
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  alignment: Alignment.center,
                  height: 150.0,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.menu,
                        size: 28.0,
                      ),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Restaurant",
                              style: TextStyle(
                                letterSpacing: 3.0,
                                color: Colors.black54,
                                fontSize: 28.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextSpan(
                              text: "\nFood Menu",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25.0,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.search_outlined,
                        size: 28.0,
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.location_on),
                      Text(
                        "Odette, Singapore",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/restaunts.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                      left: 20.0,
                      top: 10.0,
                    ),
                    child: Text(
                      "Top Foods",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 300.0,
                    child: GridView.custom(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      padding: EdgeInsets.all(10.0),
                      childrenDelegate: SliverChildListDelegate(
                        [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/sashimi_japan.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/flag_japan.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Sashimi\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "Japanese Food     \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (index) => Japan(),
                                              ),
                                            );
                                          },
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$15",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/pesto_italia.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/flag_italia.jpg",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Pesto\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "Italian Food  \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$10",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/Shawarma_egypt.png"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/flag_of_Egypt.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Shawarma\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "Egyptian Food     \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$7",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/quesadillas-mexico.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/2560px-Flag_of_Mexico.svg.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Quesadillas\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "Mexican Food     \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$6",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/picanha_brazil.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/1200px-Flag_of_Brazil.svg.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Picanha\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "Brazilian Food     \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$17",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(
                      left: 20.0,
                      top: 10.0,
                    ),
                    child: Text(
                      "Editor's Choice",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 300.0,
                    child: GridView.custom(
                      scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1),
                      padding: EdgeInsets.all(10.0),
                      childrenDelegate: SliverChildListDelegate(
                        [
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/shurpa_uzbekistan.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/Flag_of_Uzbekistan.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Shurpa\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "Uzbek Food     \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$3",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/Iskender-Kebab_turkish.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/Flag_of_Turkey.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Iskender Kebab\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "Turkish Food  \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$4",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/arroz-doce_portugal.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/Flag_of_Portugal.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Arroz Doce\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "Portugalian Food     \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$9",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/cassoulet-france.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/Flag_of_France.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Cassoulet\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "French Food     \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$6",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/foods/dal_india.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 200.0,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                          top: 20.0, right: 10.0),
                                      child: Opacity(
                                        opacity: 0.7,
                                        child: CircleAvatar(
                                          radius: 30.0,
                                          backgroundImage: AssetImage(
                                            "assets/images/foods/flag_india.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment: Alignment.topRight,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      bottom: 5.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(15.0),
                                              bottomRight:
                                                  Radius.circular(15.0),
                                            ),
                                            color: Colors.black54,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Dal\n",
                                                  style: TextStyle(
                                                      fontSize: 22.0,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                TextSpan(
                                                  text: "Indian Food     \t",
                                                  style: TextStyle(
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        OutlinedButton(
                                          onPressed: () {},
                                          style: OutlinedButton.styleFrom(
                                              fixedSize: Size(80.0, 50.0),
                                              shape: StadiumBorder(),
                                              backgroundColor: Colors.white70,
                                              textStyle: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                                letterSpacing: 1.2,
                                              )),
                                          child: Text(
                                            "\$5",
                                            style:
                                                TextStyle(color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              size: 30.0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag_rounded,
              size: 30.0,
            ),
            label: "Purchase",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_outlined,
              size: 30.0,
            ),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.payment_outlined,
              size: 30.0,
            ),
            label: "Payment",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline_outlined,
              size: 30.0,
            ),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
