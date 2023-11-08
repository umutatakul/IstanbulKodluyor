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

  void goToResult() {
    setState(() {
      activeScreenName = "result-screen";
      print("Son ekrana gidildi");
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = HomeScreen(goToQuiz);
    if (activeScreenName == "quiz-screen") {
      activeScreen = QuizScreen(goToResult);
    }
    if (activeScreenName == "result-screen") {
      activeScreen = ResultScreen();
      print("Son ekran build edildi");
    }

    return Container(
      child: activeScreen,
    );
  }
}
