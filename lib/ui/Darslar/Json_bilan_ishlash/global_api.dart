import 'dart:convert';

import 'package:dars27/Model/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePageWithApi extends StatefulWidget {
  const MyHomePageWithApi({Key? key}) : super(key: key);

  @override
  _MyHomePageWithApiState createState() => _MyHomePageWithApiState();
}

class _MyHomePageWithApiState extends State<MyHomePageWithApi> {
  List<Post>? post;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "DATA FROM API",
          style: TextStyle(color: Colors.purple),
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: _getPostsfromApi(),
          builder: (context, AsyncSnapshot<List<Post>> snap) {
            var data = snap.data;
            return snap.hasData
                ? ListView.builder(
                    itemBuilder: (ctx, index) {
                      return ListTile(
                        title: Text("${data![index].title.toString()}"),
                        subtitle: Text("${data[index].userId.toString()}"),
                      );
                    },
                    itemCount: data!.length,
                  )
                : Center(
                    child: CupertinoActivityIndicator(),
                  );
          },
        ),
      ),
    );
  }
}

Future<List<Post>> _getPostsfromApi() async {
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

  var res = await http.get(url);

  if (res.statusCode == 200) {
    return (json.decode(res.body) as List)
        .map((e) => Post.fromJson(e))
        .toList();
  } else {
    throw Exception("Xato bor: ${res.statusCode}");
  }
}
