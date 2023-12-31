import 'package:expenseapp/pages/main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ColorScheme colorScheme1 = ColorScheme.fromSeed(
  seedColor: Colors.deepPurpleAccent,
  background: Colors.blueAccent.shade100,
);

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: colorScheme1,

        //scaffoldBackgroundColor: Colors.blueAccent.shade100,
        iconTheme: IconThemeData(color: Colors.amber),
        appBarTheme: AppBarTheme(
          backgroundColor: colorScheme1.onPrimaryContainer,
          foregroundColor: colorScheme1.primaryContainer,
        ),
        cardTheme: CardTheme(
            color: colorScheme1.onPrimaryContainer,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            shadowColor: Colors.blueGrey.shade700),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              bodyMedium: TextStyle(color: Colors.white, fontSize: 23),
            ),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.blueAccent.shade400),
      ),
      home: const MainPage(),
    ),
  );
}
// Uygulamanıza bir renk paleti oluşturmak ve global theme kuralları uygulamak
// ARAŞTIRMA VE UYGULAMA
// Silme işleminde bir snackbar gösterilmesi ve snackbarın undo butonuna tıklandığında silinen verinin
// geri getirilmesi..