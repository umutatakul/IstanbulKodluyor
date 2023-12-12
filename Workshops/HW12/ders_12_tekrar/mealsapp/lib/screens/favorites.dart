import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';
import 'package:mealsapp/providers/favorites_provider.dart';

//StatlesWidget'ı ConsumerWidget'a çevirdik
//StatefullWidget'ı = ConsumerStatefulWidget a çevircez
//Birde State i = > ConsumerState e çeviricez

//StatefulConsumerWidget da build fonksiyonuna ref eklemek gerekmez (statelessda ekliyorduk)

class Favorites extends ConsumerStatefulWidget {
  const Favorites({super.key});

  @override
  ConsumerState<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends ConsumerState<Favorites> {
  @override
  Widget build(BuildContext context) {
    List<Meal> favorites = ref.watch(favoriteMealsProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text("Favoriler"),
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: ((ctx, index) => Text(favorites[index].name)),
      ),
    );
  }
}
