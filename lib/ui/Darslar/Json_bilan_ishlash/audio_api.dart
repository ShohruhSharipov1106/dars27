import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:dars27/Model/Voice_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Audio_Api extends StatefulWidget {
  @override
  _Audio_ApiState createState() => _Audio_ApiState();
}

class _Audio_ApiState extends State<Audio_Api> {
  String nameOfWord = "Hello";
  var _controller = TextEditingController();
  AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Audio Api",
          style: TextStyle(color: Colors.brown),
        ),
      ),
      body: FutureBuilder(
        future: fetchAudio(),
        builder: (context, AsyncSnapshot<List<Voice>> snap) {
          var data = snap.data;
          if (snap.hasData) {
            return Center(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: _controller,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                nameOfWord = _controller.text;
                              });
                            },
                            icon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "$nameOfWord",
                        style: TextStyle(fontSize: 25.0),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () async {
                        if (nameOfWord == _controller.text) {
                          await audioPlayer.play("https:${data![0].phonetics![0].audio}");
                        }
                      },
                      child: Text("Play"),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Future<List<Voice>> fetchAudio() async {
    final response = await http.get(
      Uri.parse('https://api.dictionaryapi.dev/api/v2/entries/en/$nameOfWord'),
    );

    if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List)
          .map((e) => Voice.fromJson(e))
          .toList();
    } else {
      throw Exception('Failed to load album');
    }
  }
}
