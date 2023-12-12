import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mealsapp/models/meal.dart';

final mealsProvider = Provider(
  (ProviderRef ref) {
    return const <Meal>[
      Meal(
        id: "1",
        categoryId: "1",
        name: "Mercimek Çorbası",
        imageUrl:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fyemek.com%2Ftarif%2Fmercimek-corbasi%2F&psig=AOvVaw1dTRoErA5-qcIsKFGUzo8i&ust=1702233637949000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCPCAl82Ag4MDFQAAAAAdAAAAABAD",
        ingredients: ["malzeme 1", "Malzeme 2", "Malzeme 3"],
      ),
      Meal(
        id: "2",
        categoryId: "4",
        name: "Katmer",
        imageUrl:
            "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.yemektekeyifvar.com%2Fhamur-isi-tarifleri%2Fkatmer&psig=AOvVaw0BEKQ_iLXXKMP47BtWMHuO&ust=1702233832865000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKiym6qBg4MDFQAAAAAdAAAAABAD",
        ingredients: ["malzeme 1", "Malzeme 2", "Malzeme 3"],
      )
    ];
  },
);

// Bu sadece read-only bir Provider