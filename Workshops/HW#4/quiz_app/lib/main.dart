import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

void main() {
  runApp(const MaterialApp(home: QuizScreen()));
}

// boilerplate => basmakalıp (kodlar)

class HomeScreen extends StatelessWidget {
  final String text = "Merhaba Stateless";

  // 1. gereksinim
  const HomeScreen({super.key});

  //! State içinde yeni bir değer verip görüntüyü değiştirmek mümkün değil!

  // void changeText() {
  //   text = "Text Değişti";
  // }

  @override
  // 2. gereksinim
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //asset
            Image.asset("assets/images/quiz-logo.png"),
            //Image.network(
            //    "https://miro.medium.com/v2/resize:fit:720/format:webp/1*FBRsnCP9wE84UVW1Kkv5Yw.jpeg"),
            Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2),
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber, foregroundColor: Colors.black),
              child: const Text(
                "Oyuna Başla",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//SABİT UI(Stateless Widget)

//Statefull Widget

// 2 Class Lazım
// Widget - State

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});
  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<QuizScreen> {
  String text = "";
  int kacinciSoru = 0;

  void changeText() {
    // text = "Butona Tıklandı";

    if (kacinciSoru < questions.length - 1) {
      kacinciSoru++;
    }
    setState(() {
      text = questions[kacinciSoru].question;
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          ...questions[kacinciSoru].answers.map((answer) {
            return ElevatedButton(
              onPressed: () {
                changeText();
              },
              child: Text(answer),
            );
          })
        ],
      )),
    );
  }
}
