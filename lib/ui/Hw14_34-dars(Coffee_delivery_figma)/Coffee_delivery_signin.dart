import 'package:flutter/material.dart';

class CoffeeDeliverySignIn extends StatefulWidget {
  @override
  State<CoffeeDeliverySignIn> createState() => _CoffeeDeliverySignInState();
}

class _CoffeeDeliverySignInState extends State<CoffeeDeliverySignIn> {
  var _formkey = GlobalKey<FormState>();
  bool hidden = true;

  var _emailkontroller = TextEditingController();

  var _passwordkontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_outlined,
            color: Colors.black,
            size: 30.0,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 100.0),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Container(
              child: Text(
                "Sign in",
                style: TextStyle(
                  color: Color(0xFF322951),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0),
            child: Container(
              child: Text(
                "Welcome back",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Form(
            key: _formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 50.0,
                    left: 30.0,
                  ),
                  child: Container(
                    width: 350.0,
                    height: 80.0,
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2.0,
                            ),
                          ),
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: "Email address",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                          labelText: "Email address",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        controller: _emailkontroller,
                        validator: (text) {
                          if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(_emailkontroller.text)) {
                            return "Please enter correct email address";
                          }
                          ;
                        }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 30.0,
                  ),
                  child: Container(
                    width: 350.0,
                    height: 80.0,
                    child: TextFormField(
                      obscureText: hidden ? true : false,
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              hidden == false ? hidden = true : hidden = false;
                            });
                          },
                          icon: Icon(
                            Icons.remove_red_eye_outlined,
                            size: 28.0,
                          ),
                        ),
                        prefixIcon: Icon(Icons.lock_outline),
                        hintText: "Password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      controller: _passwordkontroller,
                      maxLength: 12,
                      validator: (text) {
                        if (_passwordkontroller.text.length != 12) {
                          return "Please enter more password code";
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: TextButton(
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationThickness: 2.0,
                  decorationColor: Colors.blueGrey,
                  color: Colors.blueGrey,
                  fontSize: 18.0,
                ),
              ),
              onPressed: () {},
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            margin: EdgeInsets.only(
              top: 120.0,
              right: 50.0,
              bottom: 10.0,
            ),
            child: CircleAvatar(
              backgroundColor: Color(0xFF517190),
              radius: 35.0,
              child: IconButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    _formkey.currentState!.reset();
                  }
                },
                icon: Icon(
                  Icons.arrow_forward,
                  size: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              left: 30.0,
              top: 30.0,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "New member?",
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                    ),
                  ),
                  TextSpan(
                    text: "\tSign up",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
