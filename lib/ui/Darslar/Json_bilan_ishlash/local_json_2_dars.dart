import 'dart:convert';

import 'package:dars27/Model/cars_model.dart';
import 'package:flutter/material.dart';

class MyLocalJsonPageState2 extends StatefulWidget {
  @override
  _MyLocalJsonPageState2State createState() => _MyLocalJsonPageState2State();
}

class _MyLocalJsonPageState2State extends State<MyLocalJsonPageState2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Work With Json in Dart"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 500.0,
              child: FutureBuilder(
                future: malumotniOlibKel(),
                builder: (context, AsyncSnapshot<List<Car>> snap) {
                  return snap.hasData
                      ? ListView.builder(
                          itemBuilder: (ctx, index) {
                            return ListTile(
                              title:
                                  Text("Nomi: ${snap.data![index].car_name}"),
                              subtitle:
                                  Text("Yili: ${snap.data![index].year}"),
                              leading: CircleAvatar(
                                backgroundColor: Color(
                                  int.parse(
                                    snap.data![index].color.toString(),
                                  ),
                                ),
                                backgroundImage: NetworkImage(
                                  snap.data![index].photo.toString() + index.toString(),
                                ),
                              ),
                            );
                          },
                          itemCount: snap.data!.length,
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<List<Car>> malumotniOlibKel() async {
    var kelganJson = await DefaultAssetBundle.of(context)
        .loadString("assets/data/data.json");

    List<Car> listofCar =
        (json.decode(kelganJson) as List).map((e) => Car.fromJson(e)).toList();

    return listofCar;
  }
}
