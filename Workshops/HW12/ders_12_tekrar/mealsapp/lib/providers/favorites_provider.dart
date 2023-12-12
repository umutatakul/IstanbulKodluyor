//Notifier Provider (veri alıp değiştiren)

//Notifier'ın oluşturulması

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';

//initial state
class FavoriteMealsProvider extends StateNotifier<List<Meal>> {
  FavoriteMealsProvider() : super([]);

  void toggleMealFavorite(Meal meal) {
    //state immutable
    //replace

    // if (state.contains(meal)) {
    //   state.remove(meal);
    // } else {
    //   state.add(meal);
    // }
    //
    if (state.contains(meal)) {
      state = state.where((element) => element.id != meal.id).toList();
    } else {
      //... spread operatörü
      state = [...state, meal];
    }
  }
}

//Providerın oluşturulması
final favoriteMealsProvider =
    StateNotifierProvider<FavoriteMealsProvider, List<Meal>>(
  (ref) {
    return FavoriteMealsProvider();
  },
);
