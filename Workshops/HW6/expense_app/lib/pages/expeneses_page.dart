import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  List<Expense> expenses = [
    Expense(name: "Yemek", price: 500, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
    Expense(name: "Udemy Kursu", price: 200, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
              child: Text(
                "Grafik Bölümü",
                style: TextStyle(fontSize: 28),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: expenses.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20)),
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.all(8),
                      child: Text(
                        expenses[index].name,
                        style: const TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 150,
              child: Text(
                "Burası bottom bar.",
                style: TextStyle(fontSize: 28),
              ),
            )
          ]),
    );
  }
}
