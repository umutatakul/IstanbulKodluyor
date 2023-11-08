import 'package:flutter/material.dart';
import 'package:quiz_app/home_screen.dart';
import 'package:quiz_app/quiz_screen.dart';
import 'package:quiz_app/result_screen.dart';

class SwiperScreen extends StatefulWidget {
  const SwiperScreen({Key? key}) : super(key: key);

  @override
  _SwiperScreenState createState() => _SwiperScreenState();
}

//callbackfunction
class _SwiperScreenState extends State<SwiperScreen> {
  String activeScreenName = "home-screen";

  void goToQuiz() {
    setState(() {
      activeScreenName = "quiz-screen";
    });
  }

  goToResult() {
    setState(() {
      activeScreenName == "result-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = HomeScreen(goToQuiz);
    if (activeScreenName == "quiz-screen") {
      activeScreen = QuizScreen();
    } else if (activeScreenName == "result-screem") {
      activeScreen = const ResultScreen();
    }

    return Container(
      child: activeScreen,
    );
  }
}
