import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class InputWidgetlar extends StatefulWidget {
  String? title;
  InputWidgetlar(this.title);

  @override
  _InputWidgetlarState createState() => _InputWidgetlarState();
}

class _InputWidgetlarState extends State<InputWidgetlar> {
  String _inputdagiText = "Boshlangich Qiymat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          this.widget.title!,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.cyanAccent,
      ),
      body: c(),
    );
  }

  Widget a() {
    return SingleChildScrollView(
      child: Form(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                maxLength: 100,
                cursorColor: Colors.red,
                obscureText: true,
                initialValue: "Parolni Kiriting.....",
                decoration: InputDecoration(
                  hintText: "Email.....",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.yellowAccent,
                  labelText: "Email",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget b() {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: TextField(
            keyboardType: TextInputType.text,
            autofocus: true,
            maxLines: 4,
            maxLength: 40,
            cursorColor: Colors.yellow,
            onChanged: (v) {
              setState(() {
                _inputdagiText = v;
              });
              print(v);
            },
            onSubmitted: (v) {
              print("Submit Qilindi: $v");
            },
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Izohni Shu Yerda Kiriting....",
              labelText: "Izoh",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.add),
              ),
              prefixIcon: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                ),
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.send),
              ),
            ),
          ),
        ),
        Container(
          height: 200.00,
          color: Colors.grey,
          child: Center(
            child: Text(
              _inputdagiText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 33.0,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget c() {
    return Form(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Emailingiz....",
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.9),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Parolingiz...",
                labelText: "Parol",
                labelStyle: TextStyle(color: Colors.green),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
              onPressed: () {
                AwesomeDialog(
                  context: context,
                  dialogType: DialogType.QUESTION,
                  animType: AnimType.TOPSLIDE,
                  title: "Dialog Title",
                  desc: 'Dialog description here.........',
                  btnCancelOnPress: () {},
                  btnOkOnPress: () {},
                )..show();
              },
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
