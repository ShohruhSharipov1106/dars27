import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String? username;
  WelcomePage({this.username});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Username: $username"),
      ),
    );
  }
}
