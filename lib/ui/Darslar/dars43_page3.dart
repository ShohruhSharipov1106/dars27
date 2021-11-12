import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  var mySharedPreferencesForGamePage;
  @override
  void initState() {
    super.initState();
    mySharedPreferencesForGamePage
        .getInstance()
        .then((value) => mySharedPreferencesForGamePage = value);
  }

  @override
  void dispose() {
    mySharedPreferencesForGamePage.dispose();
    super.dispose();
  }

  var username;
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      username = mySharedPreferencesForGamePage.getString("username");
      setState(() {
        isLoading = false;
      });
    });
    return !isLoading
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.redAccent,
              title: Text(
                "Welcome to Game $username",
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        : const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
  }
}
