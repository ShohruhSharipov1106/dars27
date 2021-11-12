import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dars20 extends StatefulWidget {
  @override
  _Dars20State createState() => _Dars20State();
}

class _Dars20State extends State<Dars20> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  var _keyUsername = GlobalKey<FormFieldState>();
  var _keyEmail = GlobalKey<FormFieldState>();
  var _keyPassword = GlobalKey<FormFieldState>();
  int _aktivStep = 0;
  List<Step> steplarimiz = [];
  bool xato = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    steplarimiz = _steplar();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stepper Example",
          style: TextStyle(
            color: Colors.pink,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Stepper(
          currentStep: _aktivStep,
          steps: steplarimiz,
          onStepContinue: () {
            if (_aktivStep < steplarimiz.length - 1) {
              if (_keyUsername.currentState!.validate() && _aktivStep == 0) {
                setState(() {
                  _aktivStep += 1;
                });
              }
              if (_keyEmail.currentState!.validate() && _aktivStep == 1) {
                setState(() {
                  _aktivStep += 1;
                });
              }
              if (_keyPassword.currentState!.validate() && _aktivStep == 2) {
                setState(() {
                  _aktivStep += 1;
                });
              }
            }
          },
          onStepCancel: () {
            if (_aktivStep > 0) {
              setState(() {
                _aktivStep -= 1;
              });
            }
          },
        ),
      ),
    );
  }

  List<Step> _steplar() {
    return [
      // STEP - 1 - Username
      Step(
        isActive: _aktivStep == 0 ? true : false,
        title: Text("Username Kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyUsername,
            controller: _usernameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Username....",
              labelText: "Username",
            ),
            validator: (usernameText) {
              if (usernameText!.length < 5) {
                return "Kamida 5 ta belgi kiriting !";
              }
            },
          ),
        ),
        subtitle: Text("Usernameni Shu Yerda Kiriting"),
        state: _steplarniTekshir(0),
      ),
      // STEP - 1 - Email
      Step(
        isActive: _aktivStep == 1 ? true : false,
        title: Text("Email Kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyEmail,
            controller: _emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Email....",
              labelText: "Email",
            ),
            validator: (usernameText) {
              if (usernameText!.length < 5) {
                return "Kamida 5 ta belgi kiriting !";
              }
            },
          ),
        ),
        subtitle: Text("Emailni Shu Yerda Kiriting"),
        state: _steplarniTekshir(1),
      ),
      // STEP - 1 - Password
      Step(
        isActive: _aktivStep == 0 ? true : false,
        title: Text("Password Kiriting"),
        content: Padding(
          padding: EdgeInsets.all(10.0),
          child: TextFormField(
            key: _keyPassword,
            controller: _passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password....",
              labelText: "Password",
            ),
            validator: (usernameText) {
              if (usernameText!.length < 5) {
                return "Kamida 5 ta belgi kiriting !";
              }
            },
          ),
        ),
        subtitle: Text("Passwordni Shu Yerda Kiriting"),
        state: _steplarniTekshir(2),
      ),
    ];
  }

  _steplarniTekshir(int stepIndex) {
    if (_aktivStep == stepIndex) {
      print("If Bajarildi...");
      if (xato) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }
}
