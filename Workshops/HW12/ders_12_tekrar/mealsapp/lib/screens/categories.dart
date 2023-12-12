import 'package:flutter/material.dart';
import 'package:mealsapp/data/dummy_data.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/favorites.dart';
import 'package:mealsapp/screens/meals.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  //context objesi => statefull widget => context objesi tüm noktlaardan erişilebilir
  //stateless  widget => context objesinbe sadece build fonksiyonundan erişilebilinir.
  void _changeScreen(Category category, BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Meals(
          category: category,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bir kategori seçiniz"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => Favorites()));
            },
            icon: Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 2),
        children: [
          for (final c in categoryList)
            CategoryCard(
              onCategoryclick: () => _changeScreen(c, context),
              category: c,
            )
        ],
      ),
    );
  }
}
