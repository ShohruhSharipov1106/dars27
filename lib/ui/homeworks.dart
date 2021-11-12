import 'package:dars27/ui/HW10_31-dars(Fashion)/Fashion.dart';
import 'package:dars27/ui/HW11_10-dars_Foods/country_foods/Foods.dart';
import 'package:dars27/ui/HW13_35-dars(TicTacToe)/tictactoe.dart';
import 'package:dars27/ui/HW15_36-dars(Tapping_game)/Tapping_game.dart';
import 'package:dars27/ui/HW16_18-dars(Order_Your_Fav_Foods)/Order_Fav_Foods1.dart';
import 'package:dars27/ui/HW17_19-dars(Finding_number_game)/Find_number.dart';
import 'package:dars27/ui/HW4_16-dars(Authorization)/authorization.dart';
import 'package:dars27/ui/HW5_9-dars(Instagram_search)/instagram_search.dart';
import 'package:dars27/ui/HW7_32-dars(Yellow_Chair)/yellow_chair_1_page.dart';
import 'package:dars27/ui/HW12_11-dars(Coffee_Shop)/coffee_shop.dart';
import 'package:dars27/ui/HW1_5-dars(modern_essentials)/dars_5_uyga_vazifa.dart';
import 'package:dars27/ui/HW2_6-dars(terrier)/dars_6_uyga_vazifa.dart';
import 'package:dars27/ui/HW3_7-dars(sports)/sportsmen.dart';
import 'package:dars27/ui/HW6_30-dars(TabBar)/tab_bar.dart';
import 'package:dars27/ui/HW8_10-dars(Courses)/courses.dart';
import 'package:dars27/ui/HW9_32-dars(select_coffee)/select_coffee.dart';
import 'package:dars27/ui/Hw14_34-dars(Coffee_delivery_figma)/Coffee_Delivery.dart';
import 'package:flutter/material.dart';

class Homework extends StatefulWidget {
  @override
  _HomeworkState createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  List homework = [
    Dars5_vazifa(),
    Dars6_uyga_vazifa_1(),
    Sportsmen(),
    Authorization(),
    Instagram_search(),
    TabBarUV(),
    Yellow_Chair1(),
    Courses(),
    SelectCoffee(),
    MyFashionPage(),
    Foods(),
    CoffeeShop(),
    TicTacToe(),
    CoffeeDelivery(),
    TappingGame(),
    Order_Fav_Foods1(),
    Find_Number(),
  ];

  List names = [
    "Modern Essentials",
    "Terrier Black",
    "Sports",
    "Authorization",
    "Instagram_search",
    "TabBar",
    "Yellow_Chair",
    "Courses",
    "Select_Coffee",
    "Fashion",
    "Foods",
    "Coffee Shop",
    "Tic Tac Toe",
    "Coffee Delivery",
    "Tapping Game",
    "Order Your Favourite Food",
    "Finding Number Game",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homework"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: homework.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 100.0,
        ),
        itemBuilder: (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.black87,
            child: Text("${index + 1}"),
          ),
          horizontalTitleGap: 50.0,
          title: Text("${index + 1} - homework"),
          subtitle: Text(names[index]),
          trailing: Icon(Icons.arrow_forward_ios_outlined),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => homework[index],
              ),
            );
          },
        ),
      ),
    );
  }
}
