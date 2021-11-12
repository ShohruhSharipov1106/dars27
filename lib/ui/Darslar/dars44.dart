import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class Path_Provider_Darsi extends StatefulWidget {
  const Path_Provider_Darsi({Key? key}) : super(key: key);

  @override
  _Path_Provider_DarsiState createState() => _Path_Provider_DarsiState();
}

class _Path_Provider_DarsiState extends State<Path_Provider_Darsi> {
  final _textController = TextEditingController();

  Future<String> get _getFolderLocationPath async {
    Directory papka = await getApplicationDocumentsDirectory();
    debugPrint("Folder Path: " + papka.path.toString());
    return papka.path;
  }

  Future get _createFileToSystemUsingFolderFunctionUpon async {
    var yozilganFaylPathi = await _getFolderLocationPath;
    return File(yozilganFaylPathi + '/meningFayl.txt');
  }

  Future<String> _faylniOqi() async {
    try {
      File myData = await _createFileToSystemUsingFolderFunctionUpon;
      String dataFromFile = await myData.readAsString();
      return dataFromFile;
    } catch (e) {
      return e.toString();
    }
  }

  Future<File> _faylgaYoz(String yoziladiganText) async {
    File myData = await _createFileToSystemUsingFolderFunctionUpon;
    return myData.writeAsString(yoziladiganText);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Work With Provider",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                maxLines: 4,
                controller: _textController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Bu Yerda Yozilganlar Faylga Saqlanadi"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: _saveToSystem,
                  child: Text("Save Text"),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    primary: Colors.blue,
                  ),
                  onPressed: _readFromFileSystem,
                  child: Text("Write Text"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _saveToSystem() {
    _faylgaYoz(_textController.text);
  }

  void _readFromFileSystem() {
    _faylniOqi().then((value) => debugPrint(value.toString()));
  }
}
