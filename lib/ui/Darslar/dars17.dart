import 'package:dars27/ui/Darslar/WelcomePage.dart';
import 'package:flutter/material.dart';

class Dars17 extends StatefulWidget {
  @override
  _Dars17State createState() => _Dars17State();
}

class _Dars17State extends State<Dars17> {
  var _formKey = GlobalKey<FormState>();
  var _usernameController = TextEditingController();
  var _emailController = TextEditingController();
  var _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Login Form !"),
      ),
      body: Center(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    // for USERNAME
                    TextFormField(
                      validator: (text) {
                        if (text!.length < 4) {
                          return "4 ta belgidan kam bolmasin!";
                        }
                      },
                      controller: _usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Username",
                      ),
                    ),
                    SizedBox(height: 10.0),
                    // for EMAIL
                    Container(
                      child: TextFormField(
                        validator: (text) {
                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(_emailController.text)) {
                            return "To'g'ri Email Kiriting !!!";
                          }
                        },
                        controller: _emailController,
                        onTap: () {},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Email",
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    // for PASSWORD
                    TextFormField(
                      validator: (text) {
                        if (text!.length < 4) {
                          return "4 ta belgidan kam bolmasin!";
                        }
                      },
                      obscureText: true,
                      controller: _passwordController,
                      onTap: () {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Password",
                        suffix: IconButton(
                          onPressed: () {
                            _passwordController.clear();
                          },
                          icon: Icon(
                            Icons.clean_hands,
                            color: Colors.redAccent,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                      ),
                      onPressed: buttonSave,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Clear"),
                          SizedBox(
                            width: 20.0,
                          ),
                          Icon(
                            Icons.save,
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.cyan,
                      ),
                      onPressed: buttonClear,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Clear"),
                          SizedBox(
                            width: 20.0,
                          ),
                          Icon(
                            Icons.refresh,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.yellow,
              height: 200.0,
              child: Center(
                child: Text(
                  "${_usernameController.text}\n${_emailController.text}\n${_passwordController.text}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 29.0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  buttonSave() {
    if (_formKey.currentState!.validate()) {
      setState(
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WelcomePage(
                username: _usernameController.text,
              ),
            ),
          );
        },
      );
    }
  }

  buttonClear() {
    _formKey.currentState!.reset();
  }
}
