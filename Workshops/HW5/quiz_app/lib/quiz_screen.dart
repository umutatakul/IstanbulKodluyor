import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/answers.dart';
import 'package:quiz_app/renkler.dart';

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
      backgroundColor: Renkler().maviBir,
      body: Center(
        child: Container(
          decoration: BoxDecoration(color: Renkler().maviBes),
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Renkler().maviUc),
                margin: EdgeInsets.only(bottom: 50),
                padding: const EdgeInsets.all(10),
                child: Text(
                  questions[selectedQuestionIndex].question,
                  style: const TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
              //Text(questions[selectedQuestionIndex].question),

              ...questions[selectedQuestionIndex].answers.map((answer) {
                return Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  decoration: BoxDecoration(
                    border: Border.all(width: 10, color: Colors.white70),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      changeQuestionOrScreen();
                      if (bittiMi) arrivedLastQuestionCheck();
                    },
                    child: Text(
                      answer,
                      style:
                          GoogleFonts.roboto(fontSize: 22, color: Colors.white),
                    ),
                  ),
                );
              })
              // ...questions[selectedQuestionIndex].answers.map((answer) {
              //   return ElevatedButton(
              //       onPressed: () {
              //         changeQuestionOrScreen();
              //         if (bittiMi) arrivedLastQuestionCheck();
              //       },
              //       child: Text(answer));
              // })
            ],
          ),
        ),
      ),
    );
  }
}
