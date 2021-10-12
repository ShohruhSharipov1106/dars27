import 'package:dars27/Model/valyutaNUBuz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NBUuz extends StatefulWidget {
  @override
  _NBUuzState createState() => _NBUuzState();
}

class _NBUuzState extends State<NBUuz> {
  List<Valyuta>? valyuta;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NBU Valyutalar Kursi"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: Icon(
              Icons.refresh_outlined,
              size: 28.0,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 360.0,
            height: 100.0,
            padding: EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150.0,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Valyutaning nomi",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  width: 70.0,
                  alignment: Alignment.center,
                  child: Text(
                    "Sotib Olish",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  width: 70.0,
                  alignment: Alignment.center,
                  child: Text(
                    "Sotish",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  width: 70.0,
                  alignment: Alignment.center,
                  child: Text(
                    "MB",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: FutureBuilder(
              future: _malumotlarniol(),
              builder: (ctx, AsyncSnapshot<List<Valyuta>> snap) {
                return snap.hasData
                    ? ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: snap.data!.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 360.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 150.0,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "1 ${snap.data![index].title}, ${snap.data![index].code}",
                                        style: TextStyle(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70.0,
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "${snap.data![index].nbuBuyPrice}",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70.0,
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "${snap.data![index].nbuCellPrice}",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70.0,
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        "${snap.data![index].cbPrice}",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 360.0,
                                child: Divider(
                                  thickness: 0.5,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          );
                        },
                      )
                    : Center(
                        child: CupertinoActivityIndicator(),
                      );
              },
            ),
          ),

        ],
      ),
    );
  }
}

Future<List<Valyuta>> _malumotlarniol() async {
  Uri url = Uri.parse("https://nbu.uz/uz/exchange-rates/json/");
  var respons = await http.get(url);

  if (respons.statusCode == 200) {
    return (json.decode(respons.body) as List)
        .map((e) => Valyuta.fromJson(e))
        .toList();
  } else {
    throw Exception("Error: ${respons.statusCode}");
  }
}
