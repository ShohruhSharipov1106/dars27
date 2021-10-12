import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Authorization extends StatefulWidget {
  const Authorization({Key? key}) : super(key: key);

  @override
  _AuthorizationState createState() => _AuthorizationState();
}

class _AuthorizationState extends State<Authorization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Login",
          style: TextStyle(
              fontSize: 35.0,
              color: Colors.black87,
              fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: Form(
        child: Padding(
          padding: EdgeInsets.all(50.0),
          child: ListView(
            children: [
              Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person_outline,
                        size: 24.0,
                        color: Colors.blueGrey,
                      ),
                      hintText: "Type your email...",
                      hintStyle: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 18.0,
                      ),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    maxLength: 15,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        hintText: "Type your password",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18.0,
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outlined,
                          size: 24.0,
                          color: Colors.blueGrey,
                        )),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot password?",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 14.0,
                      ),
                    ),
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.only(
                          left: 175.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 500.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      gradient: LinearGradient(
                        colors: [Colors.blueAccent, Colors.purpleAccent],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    ),
                    child: OutlinedButton(
                      onPressed: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.SUCCES,
                          animType: AnimType.SCALE,
                          title: "Authorization",
                          desc: 'Authorization was SUCCESSFULLY done',
                          btnCancelOnPress: () {},
                          btnOkOnPress: () {},
                        )..show();
                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 50.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "Or Sign Up Using",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 70.0, top: 20.0),
                    child: Row(
                      children: [
                        SignInButton(
                          Buttons.Facebook,
                          mini: true,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                        SignInButton(
                          Buttons.Twitter,
                          mini: true,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                        SignInButton(
                          Buttons.LinkedIn,
                          mini: true,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                      top: 140.0,
                      bottom: 5.0,
                    ),
                    child: Text(
                      "Or Sign Up Using",
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
