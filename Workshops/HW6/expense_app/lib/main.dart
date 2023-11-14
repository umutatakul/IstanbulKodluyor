import 'package:expense_app/pages/expeneses_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      useMaterial3: true,

      // Define the default brightness and colors.
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.purple,
        // ···
        brightness: Brightness.dark,
      ),

      // Define the default `TextTheme`. Use this to specify the default
      // text styling for headlines, titles, bodies of text, and more.
      textTheme: TextTheme(
        displayLarge: const TextStyle(
          fontSize: 72,
          fontWeight: FontWeight.bold,
        ),
        // ···
        titleLarge: GoogleFonts.oswald(
          fontSize: 30,
          fontStyle: FontStyle.italic,
        ),
        bodyMedium: GoogleFonts.merriweather(),
        displaySmall: GoogleFonts.pacifico(),
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      //Expense(name: "Harcama 1",price: 500, date:DateTime.now());
      appBar: AppBar(
        title: const Text(
          "Expense App",
          style: TextStyle(fontSize: 28),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // ignore: avoid_print
              return print("İkon Tuşuna Basıldı");
            },
            icon: const Icon(Icons.library_add, size: 36),
          ),
        ],
      ),
      body: const ExpensesPage(),
    ),
  ));
}

//modelleme


