import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:math';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:math_expressions/math_expressions.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

int flag = 1;
double equationFontSize = 70.0;
double resultFontSize = 30.0;
String eqW = "w400";

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    return Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 60.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    //1
                    margin: EdgeInsets.only(
                        left: 20.0, top: 20.0, right: 40.0, bottom: 10.0),
                    alignment: Alignment.topRight,

                    child: AutoSizeText(
                      "$equation",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: equationFontSize,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    //2
                    margin: EdgeInsets.only(
                        left: 20.0, top: 0.0, right: 40.0, bottom: 0.0),
                    alignment: Alignment.topRight,
                    child: AutoSizeText(
                      "$result",
                      style: TextStyle(
                          fontSize: resultFontSize,
                          color: Colors.white70,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.white70,
                  height: 30.0,
                ),
                Container(
                  //3
                  margin: EdgeInsets.only(bottom: 25.0),

                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          button("AC"),
                          button("⌫"),
                          button("%"),
                          button("/")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          button("7"),
                          button("8"),
                          button("9"),
                          button("*")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          button("4"),
                          button("5"),
                          button("6"),
                          button("-")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          button("1"),
                          button("2"),
                          button("3"),
                          button("+")
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          button("0"),
                          button("."),
                          button("="),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
        floatingActionButton: FabCircularMenu(
          animationDuration: Duration(milliseconds: 300),
          ringDiameter: 390.0,
          ringWidth: 95,
          ringColor: Colors.red.shade400,
          fabOpenColor: Colors.redAccent,
          fabCloseColor: Colors.red.shade400,
          fabMargin: EdgeInsets.only(right: 27.0, bottom: 45.0),
          children: <Widget>[
            Container(
              height: 70.0,
              width: 70.0,
              margin: EdgeInsets.only(top: 50.0),
              child: IconButton(
                icon: Icon(
                  Icons.swap_horizontal_circle,
                  color: Colors.white70,
                  size: 50.0,
                ),
                onPressed: () {
                  setState(() {
                    flag = flag * (-1);
                  });
                },
              ),
            ),

            (flag == 1)
                ? IconButton(
                    padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                    onPressed: () {
                      OnPressed("ln ");
                    },
                    icon: Text("ln x",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300)))
                : IconButton(
                    onPressed: () {},
                    icon: AutoSizeText("xⁿ",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))),
            (flag == 1)
                ? IconButton(
                    padding: EdgeInsets.only(top: 9.0),
                    onPressed: () {
                      OnPressed("sin ");
                    },
                    icon: AutoSizeText("sin",
                        style: TextStyle(
                            fontSize: 27.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300)))
                : IconButton(
                    onPressed: () {},
                    icon: AutoSizeText("asin",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))),
            (flag == 1)
                ? IconButton(
                    padding: EdgeInsets.only(top: 1.0),
                    onPressed: () {
                      OnPressed("cos ");
                    },
                    icon: AutoSizeText("cos",
                        style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300)))
                : IconButton(
                    onPressed: () {},
                    icon: AutoSizeText("acos",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))),
            (flag == 1)
                ? IconButton(
                    padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                    onPressed: () {
                      OnPressed("tan ");
                    },
                    icon: AutoSizeText("tan",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w300)))
                : IconButton(
                    onPressed: () {},
                    icon: AutoSizeText("atan",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400))),
            (flag == 1)
                ? Container(
                    child: IconButton(
                        padding: EdgeInsets.only(left: 10.0),
                        onPressed: () {
                          OnPressed("(");
                        },
                        icon: AutoSizeText("(",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w300))))
                : Container(
                    child: IconButton(
                        onPressed: () {
                          OnPressed(")");
                        },
                        icon: AutoSizeText(")",
                            style: TextStyle(
                                fontSize: 30.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w400))),
                  )
//            (flag == 1) ? fb("") : fb(""),
          ],
        ));
  }

  Widget button(String txt) {
    return Container(
        decoration: BoxDecoration(shape: BoxShape.circle),
        height: 100.0,
        width: 95.0,
        child: MaterialButton(
          child: Text(
            txt,
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.white70,
                fontWeight: FontWeight.w200),
            textScaleFactor: 2.1,
          ),
          onPressed: () {
            OnPressed(txt);
          },
        ));
  }

  String equation = "0";
  String result = "0";
  String expression = "";

  OnPressed(String txt) {
    double d = cos((60 * pi) / 180);
    print(d);
    setState(() {
      if (txt == "AC") {
        equation = "0";
        result = "0";
        equationFontSize = 70.0;
        resultFontSize = 30.0;
      } else if (txt == "⌫") {
        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
          equationFontSize = 70.0;
          resultFontSize = 30.0;
        }
      } else if (txt == "=") {
        equationFontSize = 30.0;
        resultFontSize = 70.0;

        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

        try {
          Parser p = Parser();
          Expression exp = p.parse(expression);

          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        } catch (e) {
          result = "Error";
        }
      } else {
        equationFontSize = 70.0;
        resultFontSize = 30.0;
        if (equation == "0") {
          equation = txt;
        } else {
          equation = equation + txt;
        }
      }
    });
  }

  bool opened = false;
}
