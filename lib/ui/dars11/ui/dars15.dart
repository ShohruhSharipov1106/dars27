import 'package:dars27/ui/dars11/main.dart';
import 'package:dars27/ui/dars11/screens/car_detail_page.dart';
import 'package:dars27/ui/dars11/screens/car_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          Cars.app_name,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, i) {
            return insideListView(ctx, i);
          },
          itemCount: Cars.CAR_NAMES.length,
        ),
      ),
    );
  }

  Widget insideListView(BuildContext ctx, int i) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
            "assets/images/${Cars.CAR_NAMES[i].toLowerCase()}$i.jpeg",
          ),
        ),
        title: Text(
          Cars.CAR_NAMES[i],
        ),
        subtitle: Text(Cars.CAR_YEARS[i]),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            ctx,
            MaterialPageRoute(
              builder: (ctx) => CarDetail(i),
            ),
          );
        },
      ),
    );
  }
}
