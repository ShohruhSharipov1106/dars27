import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dars18 extends StatefulWidget {
  @override
  _Dars18State createState() => _Dars18State();
}

class _Dars18State extends State<Dars18> {
  bool _checkBoxState = false;
  String gender = "";
  String _jins = "";
  bool _onOrOff = false;
  double _sliderCount = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[_sliderCount.toInt() * 10],
      appBar: AppBar(
        title: Text("CheckBox va RadioButton"),
        elevation: 0,
        backgroundColor: Colors.red[_sliderCount.toInt() * 10],
      ),
      body: Center(
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("Email orqali xabardor bo'lish: "),
              subtitle: Text("Bu Subtitle Qismi"),
              value: _checkBoxState,
              onChanged: (holat) {
                setState(() {
                  _checkBoxState = holat!;
                });
              },
              activeColor: Colors.green,
              selected: _checkBoxState,
              secondary: Icon(
                Icons.email,
              ),
            ),
            Checkbox(
              value: _checkBoxState,
              onChanged: (value) {
                setState(() {
                  _checkBoxState = value!;
                });
              },
            ),
            RadioListTile(
              value: "Erkak",
              groupValue: _jins,
              onChanged: (v) {
                setState(() {
                  _jins = v.toString();
                });
              },
              title: Text("Erkak"),
              subtitle: Text("Jins"),
              secondary: Icon(Icons.male),
            ),
            RadioListTile(
              value: "Ayol",
              groupValue: _jins,
              onChanged: (v) {
                setState(() {
                  _jins = v.toString();
                });
              },
              title: Text("Ayol"),
              subtitle: Text("Jins"),
              secondary: Icon(Icons.female),
            ),
            Radio(
              value: "Hello",
              groupValue: _jins,
              onChanged: (v) {},
            ),
            Divider(),
            SwitchListTile(
              value: _onOrOff,
              onChanged: (h) {
                setState(() {
                  _onOrOff = h;
                });
              },
              activeColor: Colors.amber,
              title: Text("Power Off/On"),
              subtitle: Text("Switch Widgeti"),
              secondary: _onOrOff
                  ? Icon(
                      Icons.tv,
                      color: Colors.green,
                    )
                  : Icon(
                      Icons.tv_off,
                      color: Colors.red,
                    ),
            ),
            Switch(
              value: _onOrOff,
              onChanged: (v) {},
            ),
            CupertinoSwitch(
              value: _onOrOff,
              onChanged: (v) {
                setState(() {
                  _onOrOff = v;
                });
              },
            ),
            Slider(
              value: _sliderCount,
              onChanged: (v) {
                setState(() {
                  _sliderCount = v;
                });
              },
              label: "${_sliderCount}",
              min: 10,
              max: 90,
              divisions: 8,
              activeColor: Colors.red[_sliderCount.toInt() * 10],
              onChangeEnd: (e) {
                print(
                  "Slider Tugadi" + e.toString(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
