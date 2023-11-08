import 'package:flutter/material.dart';

import 'data/questions.dart';

bool bittiMi = false;

class QuizScreen extends StatefulWidget {
  const QuizScreen(this.arrivedLastQuestionCheck, {super.key});

  //final bool bittiMiConst;
  final void Function() arrivedLastQuestionCheck;

  @override
  State<QuizScreen> createState() {
    return _QuizState(arrivedLastQuestionCheck); //bitti mi
  }
}

//Navigator

class _QuizState extends State<QuizScreen> {
  _QuizState(this.arrivedLastQuestionCheck);
  int selectedQuestionIndex = 0;
  bool bittiMi = false;
  final void Function() arrivedLastQuestionCheck;

  void changeQuestionOrScreen() {
    print(bittiMi);
    setState(() {
      if (questions.length - 1 > selectedQuestionIndex) {
        selectedQuestionIndex++;
      } else {
        //Quizi bitirme kodları
        bittiMi = true;
      }
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(questions[selectedQuestionIndex].question),
              ...questions[selectedQuestionIndex].answers.map((answer) {
                return ElevatedButton(
                    onPressed: () {
                      changeQuestionOrScreen();
                      if (bittiMi) arrivedLastQuestionCheck();
                    },
                    child: Text(answer));
              })
            ],
          ),
        ),
      ),
    );
  }
}
