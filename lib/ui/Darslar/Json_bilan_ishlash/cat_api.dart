import 'dart:convert';

import 'package:dars27/Model/cat_model.dart';
import 'package:dars27/Model/infopage.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Cat_api extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _getPostsFromApi(),
          builder: (ctx, AsyncSnapshot<List<Cat>> snap) {
            var data = snap.data;
            if (snap.hasData) {
              return ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                        onTap: (){Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoPage(
                                    data![index].imageUrl.toString(),
                                    data[index].statusCode.toString(),
                                    data[index].description.toString())),);},
                                    title: Container(height: 300.0,child: Image.network(data![index].imageUrl.toString(),),),
                     subtitle: Text(data[index].description.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 25.0),),),itemCount: data!.length,);
            } else {return Center(child: CircularProgressIndicator(),);}
          }),
    );
  }
  Future<List<Cat>> _getPostsFromApi() async {
  Uri url = Uri.parse("https://hwasampleapi.firebaseio.com/http.json");

  var res = await http.get(url);

  if (res.statusCode == 200) {
    return (json.decode(res.body) as List)
        .map((e) => Cat.fromJson(e))
        .toList();
  } else {
    throw Exception("Xato bor: ${res.statusCode}");
  }
}

}
