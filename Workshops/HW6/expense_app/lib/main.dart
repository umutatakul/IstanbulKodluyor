import 'package:expense_app/pages/expeneses_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
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


