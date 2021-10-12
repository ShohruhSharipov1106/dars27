import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dars27/ui/Car%20Shop%20Info/create_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BuyCar3 extends StatefulWidget {
  String? kelganfirstname;
  String? kelgansecondname;
  String? kelganusername;
  String? kelganemail;
  String? kelganmashina;
  int? kelgannarx;

  BuyCar3({
    this.kelganfirstname,
    this.kelgansecondname,
    this.kelganusername,
    this.kelganemail,
    this.kelganmashina,
    this.kelgannarx,
  });

  @override
  _BuyCar3State createState() => _BuyCar3State();
}

class _BuyCar3State extends State<BuyCar3> {
  var _daycontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Your information",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150.0,
                width: 300.0,
                child: Card(
                  shadowColor: Colors.blueAccent,
                  margin: EdgeInsets.all(20.0),
                  elevation: 3.0,
                  child: Text(
                    "\t\t\tYour full name: \n\t\t\t" +
                        widget.kelganfirstname.toString() +
                        " " +
                        widget.kelgansecondname.toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 300.0,
                child: Card(
                  shadowColor: Colors.blueAccent,
                  margin: EdgeInsets.all(20.0),
                  elevation: 3.0,
                  child: Text(
                    "\t\t\tYour username: \n\t\t\t" +
                        widget.kelganusername.toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 300.0,
                child: Card(
                  shadowColor: Colors.blueAccent,
                  margin: EdgeInsets.all(20.0),
                  elevation: 3.0,
                  child: Text(
                    "\t\t\tYour email: \n\t\t\t" + widget.kelganemail.toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 300.0,
                child: Card(
                  shadowColor: Colors.blueAccent,
                  margin: EdgeInsets.all(20.0),
                  elevation: 3.0,
                  child: Text(
                    "\t\t\tSelect car name: \n\t\t\t" +
                        widget.kelganmashina.toString(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 300.0,
                child: Card(
                  shadowColor: Colors.blueAccent,
                  margin: EdgeInsets.all(20.0),
                  elevation: 3.0,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _daycontroller,
                    validator: (text) {
                      if (_daycontroller.text.length == 0 ||
                          _daycontroller.text == "0") {
                        return "Please enter correct data";
                      }
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      prefixIcon: Icon(Icons.calendar_today),
                      hintText: "Input rent day",
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            widget.kelgannarx = widget.kelgannarx! *
                                int.parse(_daycontroller.text);
                          });
                        },
                        icon: Icon(
                          Icons.send,
                        ),
                      ),
                      hintStyle: TextStyle(
                        color: Colors.grey[300],
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 150.0,
                width: 300.0,
                child: Card(
                  shadowColor: Colors.blueAccent,
                  margin: EdgeInsets.all(20.0),
                  elevation: 3.0,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        widget.kelgannarx;
                      });
                    },
                    child: Text(
                      "Car price(per day)\n\t\t\t" + widget.kelgannarx.toString(),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: OutlinedButton(
                  onPressed: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.SUCCES,
                      animType: AnimType.SCALE,
                      title: "Congratulations",
                      desc: "Your  SUCCESSFULLY rent a car",
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateAccount(),
                          ),
                        );
                      },
                    )..show();
                  },
                  style: OutlinedButton.styleFrom(
                    elevation: 3.0,
                    alignment: Alignment.center,
                    side: BorderSide.none,
                    backgroundColor: Colors.blueAccent,
                    primary: Colors.white,
                    fixedSize: Size(300.0, 50.0),
                  ),
                  child: Text(
                    "ACCEPT",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
