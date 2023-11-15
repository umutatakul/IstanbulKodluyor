import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  var _expenseNameController = TextEditingController();
  var _expensePriceController = TextEditingController();
  late DateTime dateTime = DateTime.now(); // Initialize with a default value

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
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
              onPressed: () async {
                final selectedDate = await showDatePicker(
                  context: context,
                  initialDate: dateTime,
                  firstDate: DateTime(2022),
                  lastDate: DateTime.now(),
                );

                if (selectedDate != null && selectedDate != dateTime) {
                  setState(() {
                    dateTime = selectedDate;
                  });
                }
              },
              icon: Icon(Icons.calendar_month),
            ),
            Text(
                "Tarih Seçiniz: ${dateTime.toLocal()}"), // Display selected date
            ElevatedButton(
              onPressed: () {
                print(
                    "Kaydedilen değer: ${_expenseNameController.text} ${_expensePriceController.text} ${dateTime.toLocal()}");
              },
              child: Text("Ekle"),
            ),
          ],
        ),
      ),
    );
  }
}
