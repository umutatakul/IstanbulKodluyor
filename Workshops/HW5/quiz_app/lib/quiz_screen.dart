import 'package:flutter/material.dart';

import 'data/questions.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() {
    return _QuizState();
  }
}

//Navigator

class _QuizState extends State<QuizScreen> {
  int selectedQuestionIndex = 0;

  void changeQuestion() {
    setState(() {
      if (questions.length - 1 > selectedQuestionIndex) {
        selectedQuestionIndex++;
      } else {
        //Quizi bitirme kodları
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
                      changeQuestion();
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
