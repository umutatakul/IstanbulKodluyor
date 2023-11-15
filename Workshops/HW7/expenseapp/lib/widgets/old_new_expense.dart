import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  var _expenseNameController = TextEditingController();
  var _expensePriceController = TextEditingController();
  late DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(children: [
          TextField(
            controller: _expenseNameController,
            maxLength: 50,
            decoration: InputDecoration(labelText: "Harcama Adı"),
          ),
          TextField(
            controller: _expensePriceController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Harcama Miktarı"),
          ),
          IconButton(
              onPressed: () {
                print("Icon button basıldı");
                showDatePicker(
                  context: context,
                  initialDate: dateTime,
                  firstDate: DateTime(1980),
                  lastDate: DateTime.now().add(
                    const Duration(days: 365 * 2),
                  ),
                );
              },
              icon: Icon(Icons.calendar_month)),
          Text("Tarih Seçiniz"),
          ElevatedButton(
              onPressed: () {
                print(
                    "Kaydedilen değer: ${_expenseNameController.text} ${_expensePriceController.text}");
              },
              child: Text("Ekle"))
        ]),
      ),
    );
  }
}
