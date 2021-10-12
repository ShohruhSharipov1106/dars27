import 'package:dars27/ui/Car%20Shop%20Info/car_shop.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  var _formkey = GlobalKey<FormState>();

  var _firstnamecontroller = TextEditingController();

  var _secondnamecontroller = TextEditingController();

  var _usernamecontroller = TextEditingController();

  var _dateofbirthcontroller = TextEditingController();

  var _emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100.0,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Column(
            children: [
              Container(
                width: 300.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.health_and_safety,
                      size: 60.0,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20.0),
                    Icon(
                      Icons.vpn_key_outlined,
                      size: 40.0,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20.0),
                    Icon(
                      Icons.local_post_office_outlined,
                      size: 32.0,
                      color: Colors.blue[500],
                    ),
                    SizedBox(width: 20.0),
                    Icon(
                      Icons.car_rental_outlined,
                      size: 28.0,
                      color: Colors.blue[300],
                    ),
                    SizedBox(width: 20.0),
                  ],
                ),
              ),
              Container(
                width: 300.0,
                child: Text(
                  "Create account",
                  style: TextStyle(
                    fontSize: 26.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 300.0,
              width: 500.0,
              child: Image.asset(
                "assets/images/car_shop/pngwingcom.png",
                fit: BoxFit.cover,
              ),
            ),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        Container(
                          height: 80.0,
                          width: 150.0,
                          // First name
                          child: TextFormField(
                            controller: _firstnamecontroller,
                            validator: (text) {
                              if (text!.length == 0) {
                                return "Enter your first name";
                              }
                            },
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "First name",
                              hintStyle: TextStyle(
                                color: Colors.black45,
                              ),
                              labelStyle: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 18.0,
                              ),
                              labelText: "First name",
                            ),
                          ),
                        ),
                        SizedBox(width: 30.0),
                        Container(
                          height: 80.0,
                          width: 200.0,
                          // Second name
                          child: TextFormField(
                            controller: _secondnamecontroller,
                            validator: (text) {
                              if (text!.length == 0) {
                                return "Enter your second name";
                              }
                            },
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Second name",
                              hintStyle: TextStyle(
                                color: Colors.black45,
                              ),
                              labelStyle: TextStyle(
                                color: Colors.grey[300],
                                fontSize: 18.0,
                              ),
                              labelText: "Second name",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: TextFormField(
                              controller: _usernamecontroller,
                              validator: (text) {
                                if (text!.length == 0) {
                                  return "Enter your user name";
                                }
                              },
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "User name",
                                hintStyle: TextStyle(
                                  color: Colors.black45,
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: 18.0,
                                ),
                                labelText: "User name",
                                suffixIcon: Container(
                                    margin: EdgeInsets.only(
                                        bottom: 5.0, right: 20.0),
                                    height: 50.0,
                                    width: 50.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.share_rounded),
                                      color: Colors.grey,
                                      iconSize: 24.0,
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: TextFormField(
                              keyboardType: TextInputType.datetime,
                              controller: _dateofbirthcontroller,
                              validator: (text) {
                                if (!RegExp(r"^[0-32]+/[0-13]+/[0-2021]")
                                    .hasMatch(_dateofbirthcontroller.text)) {
                                  return "Please enter correct data";
                                }
                              },
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(
                                  color: Colors.black45,
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: 18.0,
                                ),
                                labelText: "Date of birth",
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: TextFormField(
                              controller: _emailcontroller,
                              validator: (text) {
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(_emailcontroller.text)) {
                                  return "Please enter correct email address !!!";
                                }
                              },
                              cursorColor: Colors.black,
                              decoration: InputDecoration(
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "example@gmail.com",
                                hintStyle: TextStyle(
                                  color: Colors.black45,
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: 18.0,
                                ),
                                labelText: "Email",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20.0,
                      right: 10.0,
                      left: 10.0,
                    ),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        fixedSize: Size(
                          500.0,
                          60.0,
                        ),
                      ),
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CarShop(
                                kfirstname: _firstnamecontroller.text,
                                ksecondname: _secondnamecontroller.text,
                                kusername: _usernamecontroller.text,
                                kemail: _emailcontroller.text,
                              ),
                            ),
                          );
                        }
                      },
                      child: Text(
                        "Next Step",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
