import 'dart:math';

import 'package:expenseapp/models/expense.dart';
import 'package:expenseapp/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesPage extends StatefulWidget {
  const ExpensesPage(this.expenses, this.onRemove, {Key? key})
      : super(key: key);
  final List<Expense> expenses;
  final void Function(Expense expense) onRemove;

  @override
  _ExpensesPageState createState() => _ExpensesPageState();
}

class _ExpensesPageState extends State<ExpensesPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 150,
          child: Text(
            "Grafik Bölümü",
            style: Theme.of(context).textTheme.bodyMedium,
          ), // titleLarge stilini alması,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: widget.expenses.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: ValueKey(widget.expenses[index]),
                  child: ExpenseItem(widget.expenses[index]),
                  onDismissed: (direction) {
                    // if (direction == DismissDirection.startToEnd) {
                    //   // eğer soldan sağa kaydırılmışsa..
                    // }
                    //print(direction);
                    ExpenseItem expenseItem =
                        ExpenseItem(widget.expenses[index]);
                    var snackBar = SnackBar(
                      content: Text(
                          "${expenseItem.expense.name} adlı ${expenseItem.expense.price} TL'lik harcamanız silinmiştir."),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    widget.onRemove(widget.expenses[index]);
                  },
                );
              }),
        )
      ]),
    );
  }
}

// listeden veri silme ve alt başlıkları
// theming ve alt başlıkları