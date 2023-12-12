import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
    required this.onCategoryclick,
  }) : super(key: key);
  final Category category;
  final void Function() onCategoryclick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onCategoryclick();
        print("Inkwell ontap çalıştı");
      },
      //splashColor: category.color.withOpacity(0), ile renk patlamasını kapatabiliriz.
      splashColor: Colors.amber,

      child: Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            category.color.withOpacity(0.1),
            category.color.withOpacity(1),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Text(
          category.name,
          style: TextStyle(
              fontStyle: Theme.of(context).textTheme.bodyLarge?.fontStyle),
        ), //Global themdWen stilleri  almaya dikakt et
      ),
    );
  }
}
