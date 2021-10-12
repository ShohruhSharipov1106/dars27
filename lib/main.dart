import 'package:dars27/screens/home_page.dart';
import 'package:dars27/screens/search_page.dart';
import 'package:dars27/ui/API_nbu_uz_2.dart';
import 'package:dars27/ui/Car%20Shop%20Info/buycar3.dart';
import 'package:dars27/ui/Car%20Shop%20Info/car_shop.dart';
import 'package:dars27/ui/Car%20Shop%20Info/create_account.dart';
import 'package:dars27/ui/Darslar/Json_bilan_ishlash/cat_api.dart';
import 'package:dars27/ui/Darslar/Json_bilan_ishlash/global_api.dart';
import 'package:dars27/ui/Darslar/Json_bilan_ishlash/local_json_1_dars.dart';
import 'package:dars27/ui/Darslar/Json_bilan_ishlash/local_json_2_dars.dart';
import 'package:dars27/ui/Darslar/dars17.dart';
import 'package:dars27/ui/Darslar/dars18.dart';
import 'package:dars27/ui/Darslar/dars19.dart';
import 'package:dars27/ui/HW10_31-dars(Fashion)/Fashion.dart';
import 'package:dars27/ui/HW11_10-dars_Foods/country_foods/Foods.dart';
import 'package:dars27/ui/HW11_10-dars_Foods/country_foods/japan.dart';
import 'package:dars27/ui/HW16_18-dars(Order_Your_Fav_Foods)/Order_Fav_Foods1.dart';
import 'package:dars27/ui/HW16_18-dars(Order_Your_Fav_Foods)/Order_Fav_Foods2.dart';
import 'package:dars27/ui/HW5_9-dars(Instagram_search)/instagram_search.dart';
import 'package:dars27/ui/Hw14_34-dars(Coffee_delivery_figma)/Coffee_Delivery.dart';
import 'package:dars27/ui/Hw14_34-dars(Coffee_delivery_figma)/Coffee_delivery_signin.dart';
import 'package:dars27/ui/Qr_check.dart';
import 'package:dars27/ui/HW3_7-dars(sports)/Sport_stats.dart';
import 'package:dars27/ui/HW4_16-dars(Authorization)/authorization.dart';
import 'package:dars27/ui/Darslar/b_n_b.dart';
import 'package:dars27/ui/HW12_11-dars(Coffee_Shop)/coffee_shop.dart';
import 'package:dars27/ui/HW8_10-dars(Courses)/courses.dart';
import 'package:dars27/ui/Darslar/dars16.dart';
import 'package:dars27/ui/HW1_5-dars(modern_essentials)/dars_5_uyga_vazifa.dart';
import 'package:dars27/ui/HW1_5-dars(modern_essentials)/dars_5_uyga_vazifa_2.dart';
import 'package:dars27/ui/HW2_6-dars(terrier)/dars_6_uyga_vazifa.dart';
import 'package:dars27/ui/HW15_36-dars(Tapping_game)/Tapping_game.dart';
import 'package:dars27/ui/homeworks.dart';
import 'package:dars27/ui/HW9_32-dars(select_coffee)/select_coffee.dart';
import 'package:dars27/ui/HW9_32-dars(select_coffee)/select_coffee2.dart';
import 'package:dars27/ui/HW3_7-dars(sports)/sportsmen.dart';
import 'package:dars27/ui/HW6_30-dars(TabBar)/tab_bar.dart';
import 'package:dars27/ui/HW6_30-dars(TabBar)/tab_bar_dars.dart';
import 'package:dars27/ui/HW7_32-dars(Yellow_Chair)/yellow_chair_1_page.dart';
import 'package:dars27/ui/HW7_32-dars(Yellow_Chair)/yellow_chair_2.dart';
import 'package:dars27/ui/HW13_35-dars(TicTacToe)/tictactoe.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blueGrey[900],
      ),
      debugShowCheckedModeBanner: false,
      home: Order_Fav_Foods2()
      // home: Scaffold(
      //   appBar: AppBar(
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
      //     title: Text(
      //       "QR CHECK",
      //       style: TextStyle(
      //         color: Colors.black,
      //       ),
      //     ),
      //   ),
      //   body: QrViewExample1(),
      // ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectCoffee(),
                  ),
                );
              },
              child: Text("A"),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("B"),
          ),
        ],
      ),
    );
  }
}
