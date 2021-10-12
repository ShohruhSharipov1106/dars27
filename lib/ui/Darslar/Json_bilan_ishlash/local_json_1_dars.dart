import 'dart:convert';

import 'package:flutter/material.dart';

class MyLocalJsonPageState extends StatefulWidget {
  @override
  _MyLocalJsonPageStateState createState() => _MyLocalJsonPageStateState();
}

class _MyLocalJsonPageStateState extends State<MyLocalJsonPageState> {
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
                builder: (context, AsyncSnapshot snap) {
                  return snap.hasData
                      ? ListView.builder(
                          itemBuilder: (ctx, index) {
                            return ListTile(
                              title:
                                  Text("Nomi: ${snap.data[index]['car_name']}"),
                              subtitle:
                                  Text("Yili: ${snap.data[index]['year']}"),
                              leading: CircleAvatar(
                                backgroundColor: Color(
                                  int.parse(
                                    snap.data[index]['color'],
                                  ),
                                ),
                                backgroundImage: NetworkImage(
                                  snap.data[index]['photo'] + index.toString(),
                                ),
                              ),
                            );
                          },
                          itemCount: snap.data.length,
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

  Future<List> malumotniOlibKel() async {
    // 1 - step -> jsonni string korinishida olib kel
    var kelganJson = await DefaultAssetBundle.of(context)
        .loadString("assets/data/data.json");
    // 2-step json stringni json.decode orqali mapga aylantir
    List mashinaList = json.decode(kelganJson.toString());
    // 3-step jsonni ichida 2 ta element va viz 0-elementni car nameni print qilamiz
    debugPrint(mashinaList[0]["car_name"]);

    return mashinaList;
  }
}
