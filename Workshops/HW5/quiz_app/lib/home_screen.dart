import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/giris_resmini_goster.dart';
import 'widgets/app_bar.dart';
import 'renkler.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.onStartButtonPressed, {super.key}); // 1. gereksinim
  final void Function() onStartButtonPressed;

  // 2. gereksinim
  // Hot Reload => Restarta gerek kalmadan (spesifik durumlar hariç)
  // değişikliklerin görünmesi.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarTasarim,
      backgroundColor: Renkler().maviBir,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // asset
            girisResmi,
            // Image.network(
            //     "https://miro.medium.com/v2/resize:fit:720/format:webp/1*FBRsnCP9wE84UVW1Kkv5Yw.jpeg"),
            Container(
              child: const Text(
                "Quiz App",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
            ),
            Container(
              decoration: const BoxDecoration(),
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {
                  onStartButtonPressed();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Renkler().maviIki,
                    foregroundColor: Renkler().maviBir),
                child: const Text(
                  "Oyuna Başla",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      decorationStyle: TextDecorationStyle.wavy),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
