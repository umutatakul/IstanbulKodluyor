//Sorular https://pangea.ai/blog/tech-stack/flutter-mcq-questions-and-answers dan alınmıştır

import 'package:quiz_app/models/question_model.dart';

const questions = [
  QuestionModel("Quizimize hoş geldiniz. Hazırsanız başlayalım", ["Başla"]),
  QuestionModel("Aşağıdakilerden hangisi bir widget türüdür?",
      ["Statefull", "Constructor", "Class", "Const"]),
  QuestionModel("What is Flutter?", [
    "Flutter is an open-source backend development framework",
    "Flutter is an open-source UI toolkit",
    "Flutter is an open-source programming language for cross-platform applications",
    "Flutters is a DBMS toolkit"
  ]),
  QuestionModel(
      "Who developed the Flutter Framework and continues to maintain it today?",
      ["Facebook", "Microsoft", "Google", "Oracle"]),
  QuestionModel(
      "Which programming language is used to build Flutter applications?",
      ["Kotlin", " Dart", "Java", "Go"]),
  QuestionModel(
      "How many types of widgets are there in Flutter?", ["2", "4", "6", "8+"]),
  QuestionModel(
      "When building for iOS, Flutter is restricted to an __ compilation strategy",
      [
        "AOT (ahead-of-time)",
        "JIT (Just-in-time)",
        "Transcompilation",
        "Recompilation"
      ]),
  QuestionModel("A sequence of asynchronous Flutter events is known as a:",
      ["Flow", "Current", "Stream", "Series"]),
  QuestionModel(
      "Access to a cloud database through Flutter is available through which service?",
      ["SQLite", "Firebase Database", " NOSQL", "MYSQL"]),
  QuestionModel(
      "What are some key advantages of Flutter over alternate frameworks?", [
    "Rapid cross-platform application development and debugging tools",
    "Future-proofed technologies and UI resources",
    "Strong supporting tools for application development and launch",
    "All of the above"
  ]),
  QuestionModel(
      "What element is used as an identifier for components when programming in Flutter?",
      ["Widgets", "Keys", "Elements", "Serial"]),
  QuestionModel("Oyun bitti. Tebirkler!", [])
];
