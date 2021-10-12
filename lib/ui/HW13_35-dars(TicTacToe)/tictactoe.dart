import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  @override
  _TicTacToeState createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  bool xMi = true;
  bool winner = false;
  List<String> belgilar = List.generate(9, (index) => "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: Text("Game Tic Tac Toe"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 500.0,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(),
                        ],
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white,
                      ),
                      child: Text(
                        "${belgilar[index]}",
                        style: TextStyle(fontSize: 100.0),
                      ),
                    ),
                    onTap: () {
                      setState(
                        () {
                          if (xMi) {
                            belgilar[index] = "X";
                            xMi = !xMi;
                          } else {
                            belgilar[index] = "O";
                            xMi = !xMi;
                          }
                          for (var j = 0; j < 9; j += 3) {
                            if (belgilar[j] == belgilar[j + 1] &&
                                belgilar[j + 1] == belgilar[j + 2] &&
                                belgilar[j + 2] != '') {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.SUCCES,
                                animType: AnimType.SCALE,
                                title: "Tabriklaymiz !!!",
                                desc:
                                    "${belgilar[j]} o'yinchi siz o'yinda G'ALABA qozondingiz !!!",
                                btnCancelOnPress: () {
                                  setState(() {
                                    belgilar = List.generate(9, (index) => "");
                                  });
                                },
                                btnOkOnPress: () {
                                  setState(() {
                                    belgilar = List.generate(9, (index) => "");
                                  });
                                  winner = true;
                                },
                              )..show();
                            }
                          }
                          for (var j = 0; j < 3; j += 1) {
                            if (belgilar[j] == belgilar[j + 3] &&
                                belgilar[j + 3] == belgilar[j + 6] &&
                                belgilar[j + 6] != '' ||
                                !winner) {
                              AwesomeDialog(
                                context: context,
                                dialogType: DialogType.SUCCES,
                                animType: AnimType.SCALE,
                                title: "Tabriklaymiz !!!",
                                desc:
                                    "${belgilar[j]} o'yinchi siz o'yinda G'ALABA qozondingiz !!!",
                                btnCancelOnPress: () {
                                  setState(() {
                                    belgilar = List.generate(9, (index) => "");
                                  });
                                },
                                btnOkOnPress: () {
                                  setState(() {
                                    belgilar = List.generate(9, (index) => "");
                                  });
                                  winner = true;
                                },
                              )..show();
                            }
                          }
                          if (belgilar[0] == belgilar[4] &&
                              belgilar[4] == belgilar[8] &&
                              belgilar[8] != '' ||
                              !winner) {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.SUCCES,
                              animType: AnimType.SCALE,
                              title: "Tabriklaymiz !!!",
                              desc:
                                  "${belgilar[4]} o'yinchi siz o'yinda G'ALABA qozondingiz !!!",
                              btnCancelOnPress: () {
                                setState(() {
                                  belgilar = List.generate(9, (index) => "");
                                });
                              },
                              btnOkOnPress: () {
                                setState(() {
                                  belgilar = List.generate(9, (index) => "");
                                });
                                winner = true;
                              },
                            )..show();
                          } else if (belgilar[2] == belgilar[4] &&
                              belgilar[4] == belgilar[6] &&
                              belgilar[6] != '' ||
                              !winner) {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.SUCCES,
                              animType: AnimType.SCALE,
                              title: "Tabriklaymiz !!!",
                              desc:
                                  "${belgilar[2]} o'yinchi siz o'yinda G'ALABA qozondingiz !!!",
                              btnCancelOnPress: () {
                                setState(() {
                                  belgilar = List.generate(9, (index) => "");
                                });
                              },
                              btnOkOnPress: () {
                                setState(() {
                                  belgilar = List.generate(9, (index) => "");
                                });
                                winner = true;
                              },
                            )..show();
                          } else if (belgilar[0] != '' &&
                              belgilar[1] != '' &&
                              belgilar[2] != '' &&
                              belgilar[3] != '' &&
                              belgilar[4] != '' &&
                              belgilar[5] != '' &&
                              belgilar[6] != '' &&
                              belgilar[7] != '' &&
                              belgilar[8] != '' &&
                              winner) {
                            AwesomeDialog(
                              context: context,
                              dialogType: DialogType.SUCCES,
                              animType: AnimType.SCALE,
                              title: "DURANG",
                              desc: "Afsuski o'yinda G'OLIB aniqlanmadi !!!",
                              btnCancelOnPress: () {
                                setState(() {
                                  belgilar = List.generate(9, (index) => "");
                                });
                              },
                              btnOkOnPress: () {
                                setState(() {
                                  belgilar = List.generate(9, (index) => "");
                                });
                              },
                            )..show();
                          }
                        },
                      );
                    },
                  );
                },
                itemCount: 9,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    belgilar = List.generate(9, (index) => "");
                  });
                },
                child: Text(
                  "RESTART GAME",
                  style: TextStyle(fontSize: 28.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
