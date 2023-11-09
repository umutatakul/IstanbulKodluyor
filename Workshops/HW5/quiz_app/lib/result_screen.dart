import 'package:flutter/material.dart';
import 'package:quiz_app/renkler.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Renkler().maviBir,
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/alkisResmi.png"),
          Text(
            "Tebrikler oyunu tamamladınız!",
            style: TextStyle(fontSize: 28, color: Colors.white),
          )
        ],
      )),
    );
  }
}
