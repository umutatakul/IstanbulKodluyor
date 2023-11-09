import 'package:flutter/material.dart';
import 'package:quiz_app/renkler.dart';

Widget girisResmi = Container(
  decoration: BoxDecoration(
    border: Border.all(
      color: Renkler().maviIki,
      width: 20.0,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Image.asset(
    "assets/images/flutter_app_logo.png",
    width: 240,
  ),
  margin: EdgeInsets.all(15),
);
