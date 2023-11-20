import 'package:expenseapp/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewExpense extends StatefulWidget {
  const NewExpense(this._ekleExpense, {Key? key}) : super(key: key);
  final void Function() _ekleExpense;
  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _NewExpenseState createState() => _NewExpenseState(this._ekleExpense);
}

class _NewExpenseState extends State<NewExpense> {
  final _expenseNameController = TextEditingController();
  final _expensePriceController = TextEditingController();
  DateTime? _selectedDate;
  Category _selectedCategory = Category.work;
  List<Expense> _denemeExpensesList = [];
  _NewExpenseState(this._ekleExpense);
  final void Function() _ekleExpense;

  void _openDatePicker() async {
    DateTime today = DateTime.now(); // 16.11.2023
    // 2022, 11, 16
    DateTime oneYearAgo = DateTime(today.year - 1, today.month, today.day);
    // showDatePicker(
    //         context: context,
    //         initialDate: today,
    //         firstDate: oneYearAgo,
    //         lastDate: today)
    // .then((value) {
    //   async işlemden cevap ne zaman gelirse bu bloğu çalıştır..
    //   print(value);
    // });
    // async function => await etmek
    // nullable
    // 14:20
    DateTime? selectedDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate == null ? today : _selectedDate!,
        firstDate: oneYearAgo,
        lastDate: today);

    ;
    setState(() {
      _selectedDate = selectedDate;
    });
    print("Merhaba");
    // sync => bir satır çalışmasını bitirmeden alt satıra geçemez.
    // async => async olan satır sadece tetiklenir kod aşağıya doğru çalışmaya devam eder
  }

  void ekleExpense() {
    _denemeExpensesList.add(
      Expense(
        name: _expenseNameController.text,
        price: double.tryParse(_expensePriceController.text) ?? 0.0,
        date: _selectedDate ?? DateTime.now(),
        category: _selectedCategory,
      ),
    );

    print("ekleExpense() çalıştı");
  }

  // 3:20 discorddayız
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
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _expensePriceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                      labelText: "Harcama Miktarı", prefixText: "₺"),
                ),
              ),
              IconButton(
                  onPressed: () => _openDatePicker(),
                  icon: const Icon(Icons.calendar_month)),
              // ternary operator
              Text(_selectedDate == null
                  ? "Tarih Seçiniz"
                  : DateFormat.yMd().format(_selectedDate!)),
            ],
            // String?  a
            // String => a!
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              DropdownButton(
                  value: _selectedCategory,
                  items: Category.values.map((category) {
                    return DropdownMenuItem(
                        value: category, child: Text(category.name));
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      if (value != null) _selectedCategory = value;
                    });
                  })
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Kapat")),
              const SizedBox(
                width: 12,
              ),
              ElevatedButton(
                  onPressed: ()
                      //{
                      //   return ekleExpense();
                      //   print(_denemeExpensesList);
                      // }
                      {
                    ekleExpense();
                    print(_denemeExpensesList.last.id);
                    print(_denemeExpensesList.last.price);
                    print(_denemeExpensesList.last.name);
                    print(
                      _denemeExpensesList.last.category.name,
                    );
                    print(
                        DateFormat.yMd().format(_denemeExpensesList.last.date));

                    print("ekle butonu çağırıldı");
                    print(
                        "Kaydedilen değer: ${_expenseNameController.text} ${_expensePriceController.text}");
                  },
                  child: Text("Ekle")),
            ],
          ),
        ]),
      ),
    );
  }
}
// 15:00
// pairlerdeyiz
