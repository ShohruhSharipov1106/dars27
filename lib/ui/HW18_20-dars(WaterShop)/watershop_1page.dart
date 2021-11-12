import 'package:dars27/ui/HW18_20-dars(WaterShop)/watershop_2page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Water_Shop_Page1 extends StatefulWidget {
  @override
  State<Water_Shop_Page1> createState() => _Water_Shop_Page1State();
}

class _Water_Shop_Page1State extends State<Water_Shop_Page1> {
  TextEditingController _firstnamecontroller = TextEditingController();

  TextEditingController _secondnamecontroller = TextEditingController();

  TextEditingController _usernamecontroller = TextEditingController();

  TextEditingController _emailcontroller = TextEditingController();

  TextEditingController _passwordcontroller = TextEditingController();

  var _firstnamekey = GlobalKey<FormFieldState>();

  var _secondnamekey = GlobalKey<FormFieldState>();

  var _usernamekey = GlobalKey<FormFieldState>();

  var _emailkey = GlobalKey<FormFieldState>();

  var _passwordkey = GlobalKey<FormFieldState>();

  int _activeStep = 0;

  var _formkey = GlobalKey<FormState>();
  bool hidden = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Water Shop Authorization",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
        ),
        child: Stepper(
          currentStep: _activeStep,
          onStepContinue: () {
            setState(
              () {
                if (_activeStep == 0) {
                  if (_firstnamekey.currentState!.validate()) {
                    _activeStep += 1;
                  }
                } else if (_activeStep == 1) {
                  if (_secondnamekey.currentState!.validate()) {
                    _activeStep += 1;
                  }
                } else if (_activeStep == 2) {
                  if (_usernamekey.currentState!.validate()) {
                    _activeStep += 1;
                  }
                } else if (_activeStep == 3) {
                  if (_emailkey.currentState!.validate()) {
                    _activeStep += 1;
                  }
                } else if (_activeStep == 4) {
                  if (_passwordkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WaterShop_Page_2(),
                      ),
                    );
                  }
                }
              },
            );
          },
          onStepCancel: () {
            setState(() {});
            _activeStep <= 0 ? _activeStep = 0 : _activeStep -= 1;
          },
          steps: [
            // FIRST NAME
            Step(
              isActive: _activeStep == 0 ? true : false,
              title: Text("First name"),
              content: TextFormField(
                validator: (text) {
                  if (_firstnamecontroller.text.length <= 7) {
                    return "Please enter 7 more digits";
                  }
                },
                key: _firstnamekey,
                controller: _firstnamecontroller,
                decoration: InputDecoration(
                  hintText: "First name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            // SECOND NAME
            Step(
              isActive: _activeStep == 1 ? true : false,
              title: Text("Second name"),
              content: TextFormField(
                validator: (text) {
                  if (_secondnamecontroller.text.length <= 7) {
                    return "Please enter 7 more digits";
                  }
                },
                key: _secondnamekey,
                controller: _secondnamecontroller,
                decoration: InputDecoration(
                  hintText: "Second name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            // USERNAME
            Step(
              isActive: _activeStep == 2 ? true : false,
              title: Text("Username"),
              content: TextFormField(
                validator: (text) {
                  if (_usernamecontroller.text.length <= 7) {
                    return "Please enter 7 more digits";
                  }
                },
                key: _usernamekey,
                controller: _usernamecontroller,
                decoration: InputDecoration(
                  hintText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            // EMAIL
            Step(
              isActive: _activeStep == 3 ? true : false,
              title: Text("Email"),
              content: TextFormField(
                key: _emailkey,
                validator: (text) {
                  if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(_emailcontroller.text)) {
                    return "Please enter correct email address";
                  }
                },
                controller: _emailcontroller,
                decoration: InputDecoration(
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
            // PASSWORD
            Step(
              isActive: _activeStep == 4 ? true : false,
              title: Text("Password"),
              content: TextFormField(
                obscureText: hidden,
                key: _passwordkey,
                validator: (text) {
                  if (_passwordcontroller.text.length <= 8) {
                    return "Please enter 8 more digits";
                  }
                },
                controller: _passwordcontroller,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        hidden == true ? hidden = false : hidden = true;
                      });
                    },
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey,
                      size: 28.0,
                    ),
                  ),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                  ),
                ),
                keyboardType: TextInputType.name,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
