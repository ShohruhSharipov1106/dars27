import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dars19 extends StatefulWidget {
  @override
  _Dars19State createState() => _Dars19State();
}

class _Dars19State extends State<Dars19> {
  String? tanlanganRang;
  Color colorOfBody = Colors.white;

  @override
  Widget build(BuildContext context) {
    DateTime hozirgiTime = DateTime.now();
    DateTime uchOyOldin = DateTime(2021, 6, 11);
    DateTime yigirmaKunKeyin =
        DateTime(2021, hozirgiTime.month, hozirgiTime.day + 20);
    return Scaffold(
      backgroundColor: colorOfBody,
      appBar: AppBar(
        title: Text(
          "Dropdownbutton va b",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                        ),
                        SizedBox(width: 10.0),
                        Text("White"),
                      ],
                    ),
                    value: "oq",
                  ),
                  DropdownMenuItem(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(width: 10.0),
                        Text("Black"),
                      ],
                    ),
                    value: "qora",
                  ),
                  DropdownMenuItem(
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green,
                        ),
                        SizedBox(width: 10.0),
                        Text("Green"),
                      ],
                    ),
                    value: "yashil",
                  ),
                ],
                onChanged: (v) {
                  setState(
                    () {
                      tanlanganRang = v;
                      if (v == "yashil") {
                        colorOfBody = Colors.greenAccent;
                      } else if (v == "oq") {
                        colorOfBody = Colors.white;
                      } else if (v == "qora") {
                        colorOfBody = Colors.black;
                      }
                    },
                  );
                },
                hint: Text("Tanlang..."),
                value: tanlanganRang,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate: hozirgiTime,
                        firstDate: uchOyOldin,
                        lastDate: yigirmaKunKeyin)
                    .then(
                  (selectedTime) {
                    print(selectedTime);
                  },
                );
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return CupertinoDatePicker(
                      key: Key("Hello"),
                      maximumYear: 2022,
                      minimumYear: 1999,
                      mode: CupertinoDatePickerMode.dateAndTime,
                      minuteInterval: 1,
                      minimumDate: uchOyOldin,
                      maximumDate: yigirmaKunKeyin,
                      use24hFormat: true,
                      initialDateTime: hozirgiTime,
                      onDateTimeChanged: (tanlanganVaqt) {
                        print(tanlanganVaqt);
                      },
                    );
                  },
                );
              },
              child: Text("Sana Tanla"),
            ),
            OutlinedButton(
              onPressed: () {
                Platform.isAndroid
                    ? showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      )
                    : showModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return CupertinoTimerPicker(
                            onTimerDurationChanged: (v) {},
                          );
                        },
                      );
              },
              child: Text("Soat Tanla"),
              style: OutlinedButton.styleFrom(primary: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }
}
