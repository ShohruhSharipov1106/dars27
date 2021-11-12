import 'dart:convert';

import 'package:dars27/Model/Pokemon_model.dart';
import 'package:dars27/ui/Darslar/Json_bilan_ishlash/Pokemon_page2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PokemonGo extends StatefulWidget {
  @override
  _PokemonGoState createState() => _PokemonGoState();
}

class _PokemonGoState extends State<PokemonGo> {
  String url =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  Pokedex? pokemon;
  Future<Pokedex> _getFromPokemon() async {
    try {
      var res = await http.get(Uri.parse(url));
      var decodedJson = json.decode(res.body);
      pokemon = Pokedex.fromJson(decodedJson);
      return pokemon!;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, holat) {
        return Scaffold(
          backgroundColor: holat == Orientation.portrait
              ? Colors.white
              : Colors.yellowAccent,
          appBar: AppBar(
            title: Text("Pokemon Go"),
            centerTitle: true,
          ),
          body: Center(
            child: FutureBuilder(
              future: _getFromPokemon(),
              builder: (context, AsyncSnapshot<Pokedex> snap) {
                var data = snap.data;
                if (snap.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CupertinoActivityIndicator(),
                  );
                } else if (snap.connectionState == ConnectionState.done) {
                  return GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: holat == Orientation.portrait ? 2 : 4),
                    itemBuilder: (ctx, index) {
                      return Hero(
                        tag: "$index",
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Pokemon_Page2(
                                    data!.pokemon![index].img.toString(),
                                    data.pokemon![index].name.toString(),
                                    data.pokemon![index].height.toString(),
                                    data.pokemon![index].weight.toString(),
                                    data.pokemon![index].candy.toString(),
                                    data.pokemon![index].candyCount!.toInt(),
                                    data.pokemon![index].egg.toString()),
                              ),
                            );
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  data!.pokemon![index].img.toString(),
                                ),
                              ),
                            ),
                            child: Text(
                              data.pokemon![index].name.toString(),
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: data!.pokemon!.length,
                  );
                } else {
                  return Center();
                }
              },
            ),
          ),
        );
      },
    );
  }
}
