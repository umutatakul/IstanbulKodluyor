// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:quiz_app/data/questions.dart';

// void main() {
//   runApp(const MaterialApp(home: QuizScreen()));
// }

// Widget soruText(String gelenText) {
//   return Text(
//     gelenText,
//     style: GoogleFonts.robotoCondensed(fontSize: 32, color: Colors.white),
//     textAlign: TextAlign.center,
//   );
// }
// // boilerplate => basmakalıp (kodlar)

// class HomeScreen extends StatelessWidget {
//   final String text = "Merhaba Stateless";

//   // 1. gereksinim
//   const HomeScreen({super.key});

//   //! State içinde yeni bir değer verip görüntüyü değiştirmek mümkün değil!

//   // void changeText() {
//   //   text = "Text Değişti";
//   // }

//   @override
//   // 2. gereksinim
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.deepPurple,
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             //asset
//             Image.asset("assets/images/quiz-logo.png"),
//             //Image.network(
//             //    "https://miro.medium.com/v2/resize:fit:720/format:webp/1*FBRsnCP9wE84UVW1Kkv5Yw.jpeg"),
//             Text(
//               text,
//               style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 2),
//             ),

//             ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.amber, foregroundColor: Colors.black),
//               child: const Text(
//                 "Oyuna Başla",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// //SABİT UI(Stateless Widget)

// //Statefull Widget

// // 2 Class Lazım
// // Widget - State

// class QuizScreen extends StatefulWidget {
//   const QuizScreen({super.key});
//   @override
//   State<QuizScreen> createState() {
//     return _QuizState();
//   }
// }

// class _QuizState extends State<QuizScreen> {
//   String text = "Başlamak için tıklayınız";
//   int kacinciSoru = 0;
//   bool girisResminiGoster = true;
//   bool cikisResminiGoster = false;

//   Widget girisResminiGosterFun() {
//     if (girisResminiGoster) {
//       return Image.asset("assets/images/quiz-logo.png");
//     } else {
//       return const Text("");
//     }
//   }

//   Widget cikisResminiGosterFun() {
//     if (cikisResminiGoster) {
//       return Image.asset("assets/images/alkisResmi.png");
//     } else {
//       return const Text("");
//     }
//   }

//   void changeText() {
//     // text = "Butona Tıklandı";
//     girisResminiGoster = false;
//     if (kacinciSoru < questions.length - 1) {
//       kacinciSoru++;
//     }
//     if (kacinciSoru == questions.length - 1) {
//       cikisResminiGoster = true;
//     }
//     setState(() {
//       text = questions[kacinciSoru].question;
//     });
//   }

//   @override
//   Widget build(BuildContext buildContext) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.purple,
//         title: const Text(
//           "Flutter Quiz App",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 28,
//           ),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           color: Colors.purple.shade800,
//         ),
//         child: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             girisResminiGosterFun(),
//             cikisResminiGosterFun(),
//             Container(
//               decoration: BoxDecoration(
//                   border: Border.all(width: 10, color: Colors.purpleAccent),
//                   borderRadius: BorderRadius.circular(30),
//                   color: Colors.purple.shade700),
//               padding: const EdgeInsets.all(10),
//               child: soruText(
//                 text,
//               ),
//             ),
//             ...questions[kacinciSoru].answers.map((answer) {
//               return Container(
//                 decoration: BoxDecoration(
//                   border: Border.all(width: 10, color: Colors.deepPurple),
//                   borderRadius: BorderRadius.circular(15),
//                 ),
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: () {
//                     changeText();
//                   },
//                   child: Text(
//                     answer,
//                     style:
//                         GoogleFonts.roboto(fontSize: 22, color: Colors.white),
//                   ),
//                 ),
//               );
//             })
//           ],
//         )),
//       ),
//     );
//   }
// }
